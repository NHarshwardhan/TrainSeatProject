<?php
header('Content-Type: application/json; charset=utf-8');

$servername = "localhost";
$username = "root";
$password = "";

try {
    $conn = new PDO("mysql:host=$servername;dbname=codingexam", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);  
    }
catch(PDOException $e)
    {
    // echo "Connection failed: " . $e->getMessage();
    }

    // $userInputNoOfSeat=2;
    // $SeatAllot = 1;
    // $confirmSeat = array();
    
    // $SqlQuesryForGettingRowNumber = "SELECT seatRow_id FROM seat_row ";
    // $RowNumberResult = $conn->query($SqlQuesryForGettingRowNumber)->fetchAll();
    
    // if (count($RowNumberResult) > 0) {
    //                 foreach ($RowNumberResult as $row) {
    //                 $SqlQueryForGettingSeatStatus = "SELECT * FROM seatstatus where SeatRow_id = '$row[seatRow_id]'";
                    
    //                 $SeatStatusResult = $conn->query($SqlQueryForGettingSeatStatus)->fetchAll();        
                                
    //                  foreach ($SeatStatusResult as $row_1) { 
    
    //                             if( $SeatAllot <= $userInputNoOfSeat ){                 
                            
    //                                 if($row_1['status'] =="Yes"){
                                            
    //                                     $confirmSeat['rowNo'][] = $row_1['SeatRow_id'];
    //                                     $confirmSeat['seatNumber'][] = $row_1['SeatNumber'];
    //                                     $confirmSeat['availbility'][] = $row_1['status'];
                                        
    //                                     //Updating alloted seat not to available
    //                                     // $sql = "UPDATE seatstatus SET status='No' WHERE SeatNumber= '$row_1[SeatNumber]'";
    //                                     // $conn->prepare($sql)->execute();
                                        
    //                                 }else{
                                       
    //                                    continue;
    //                                 }           
    //                             $SeatAllot++;
    //                         }
    //                         else{
    //                            break;
    //                         }  
                            
                              
    //                 }
                  
    
    //         }
    //      $AllSeatReport = "SELECT * from seatstatus";
    //     $AllSeatReportResult = $conn->query($AllSeatReport)->fetchAll();   
    //     foreach ($AllSeatReportResult as $row_report_all_seat) { 
    //         $confirmSeat['RemainData']['seatNo'][] = $row_report_all_seat['SeatNumber'];
    //         $confirmSeat['RemainData']['RemainingSeatReport'][] = $row_report_all_seat['status'];

    //     } 

      

    
           
    // } 
      
    // print_r($singleArray);
    // // echo json_encode($confirmSeat,JSON_PRETTY_PRINT);
    
     
?>