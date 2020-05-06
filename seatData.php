<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: PUT, GET, POST");
header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
       
$postdata   = file_get_contents("php://input");
$data    = json_decode($postdata); 


$userInputNoOfSeat = $data->noofSeat; 

require 'connect.php';

$SeatAllot = 1;
$confirmSeat = array();

$SqlQuesryForGettingRowNumber = "SELECT seatRow_id FROM seat_row ";
$RowNumberResult = $conn->query($SqlQuesryForGettingRowNumber)->fetchAll();

if (count($RowNumberResult) > 0) {
                foreach ($RowNumberResult as $row) {
                 
                 //check if seats are full or not
                 
                 $sql_check_for_seat = "SELECT status from seatStatus where status='No'";
                 $seatAvailableCount = $conn->query($sql_check_for_seat)->fetchColumn();
                 if($seatAvailableCount <=80){
                    $SqlQueryForGettingSeatStatus = "SELECT * FROM seatstatus where SeatRow_id = '$row[seatRow_id]'";
                
                    $SeatStatusResult = $conn->query($SqlQueryForGettingSeatStatus)->fetchAll();        
                                
                     foreach ($SeatStatusResult as $row_1) { 
    
                                if( $SeatAllot <= $userInputNoOfSeat ){                 
                            
                                    if($row_1['status'] =="Yes"){
                                            
                                        $confirmSeat['rowNo'][] = $row_1['SeatRow_id'];
                                        $confirmSeat['seatNumber'][] = $row_1['SeatNumber'];
                                        $confirmSeat['availbility'][] = $row_1['status'];
    
                                        // // Updating alloted seat not to available
                                        $sql = "UPDATE seatstatus SET status='No' WHERE SeatNumber= '$row_1[SeatNumber]'";
                                        $conn->prepare($sql)->execute();
                                        
                                    }else{                           
    
                                       continue;
                                    }           
                                $SeatAllot++;
                            }
                            else{
                               break;
                            } 
                                  
                    }
                  
    
                  }
                  else{
                    $confirmSeat['seatFullMessage']="No More Booking Allowed";
                  }
                 }
              
         
               
        $AllSeatReport = "SELECT * from seatstatus where status='Yes'";
        $AllSeatReportResult = $conn->query($AllSeatReport)->fetchAll();   
        foreach ($AllSeatReportResult as $row_report_all_seat) { 
            $confirmSeat['seatNo'][] = $row_report_all_seat['SeatNumber'];

        } 

       
} 
echo json_encode($confirmSeat);

?>