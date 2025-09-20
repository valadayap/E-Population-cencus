  <?php
session_start();
include 'conphp.php';
?>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
    .style_text{
        width: 12px;
        height: 18px;
        padding: 4px;
        font-size: 14px;
        border: 1px solid #ccc;

    }
    *{
        font-size:22px;
    }
    </style>
    <link rel="stylesheet" href="home_style.css">
</link>
</head>
<body>
    <form action="" method="POST">
   <div class="dropdown-group">
   <label for="state">State:</label>
         <input type="text" name="state_name" value="Gujrat" readonly>
                               
 <label for="district">District:</label>
            <select id="district" name="district[]" required>
                                                                        <option value=" ">Select a District</option>
            <option value="Ahmedabad">Ahmedabad</option>
            <option value="Amreli">Amreli</option>
            <option value="Anand">Anand</option>
            <option value="Aravalli">Aravalli</option>
            <option value="Banaskantha">Banaskantha</option>
            <option value="Bharuch">Bharuch</option>
            <option value="Bhavnagar">Bhavnagar</option>
            <option value="Botad">Botad</option>
            <option value="Chhotaudepur">Chhota Udaipur</option>
            <option value="Dahod">Dahod</option>
            <option value="Dangs">Dangs</option>
            <option value="DevbhoomiDwarka">Devbhumi Dwarka</option>
            <option value="Gandhinagar">Gandhinagar</option>
            <option value="Girsomnath">Gir Somnath</option>
            <option value="Jamnagar">Jamnagar</option>
            <option value="Junagadh">Junagadh</option>
            <option value="Kutch">Kachchh</option>
            <option value="kheda">Kheda</option>
            <option value="Mehsana">Mahesana</option>
            <option value="mahisagar">Mahisagar</option>
            <option value="morbi">Morbi</option>
            <option value="narmada">Narmada</option>
            <option value="navsari">Navsari</option>
            <option value="panchmahal">Panch Mahals</option>
            <option value="patan">Patan</option>
            <option value="porbandar">Porbandar</option>
            <option value="rajkot">Rajkot</option>
            <option value="sabarkantha">Sabarkantha</option>
            <option value="surat">Surat</option>
            <option value="surendranagar">Surendranagar</option>
            <option value="tapi">Tapi</option>
            <option value="vadodara">Vadodara</option>
            <option value="valsad">Valsad</option>


                      <input type="text" name="d_code[]" class="style_text">
             </select>
  
 <label for="sub_district">sub_District:</label>
 <select id="subDistrict" name="subDistrict[]" required>
            <option value="">-- Select a Sub-District --</option>
        </select>

<script>
    const gujaratDistricts = {
  "Ahmedabad": ["Ahmedabad City", "Daskroi", "Dholka", "Sanand", "Viramgam", "Bavla", "Dhandhuka", "Ranpur", "Detroj‑Rampura", "Barwala", "Mandal"],  // :contentReference[oaicite:0]{index=0}
  "Amreli": ["Amreli", "Babra", "Bagasara", "Dhari", "Jafrabad", "Khambha", "Kunkavav Vadia", "Lathi", "Lilia", "Rajula", "Savarkundla"],  // :contentReference[oaicite:1]{index=1}
  "Anand": ["Anand", "Anklav", "Borsad", "Khambhat", "Petlad", "Sojitra", "Tarapur", "Umreth"],  // :contentReference[oaicite:2]{index=2}
  "Aravalli": ["Bayad", "Bhiloda", "Dhansura", "Malpur", "Meghraj", "Modasa"],  // :contentReference[oaicite:3]{index=3}
  "Banaskantha": ["Amirgadh", "Bhabhar", "Dantiwada", "Deesa", "Deodar", "Dhanera", "Kankrej", "Lakhani", "Palanpur", "Suigam", "Tharad", "Vadgam", "Vav"],  // :contentReference[oaicite:4]{index=4}
  "Bharuch": ["Bharuch", "Amod", "Ankleshwar", "Hansot", "Jambusar", "Jhagadia", "Netrang", "Valia"],  // :contentReference[oaicite:5]{index=5}
  "Bhavnagar": ["Bhavnagar", "Mahuva", "Talaja", "Botad", "Palitana", "Sihor", "Gadhada", "Gariadhar", "Ghogha", "Umrala", "Vallabhipur"],  // :contentReference[oaicite:6]{index=6}
  "Botad": ["Botad", "Barwala", "Gadhada", "Ranpur"],  // :contentReference[oaicite:7]{index=7}
  "Chhotaudepur": ["Chhota Udaipur", "Jetpur Pavi", "Kawant", "Naswadi", "Sankheda", "Bodeli"],  // :contentReference[oaicite:8]{index=8}
  "Dahod": ["Dahod", "Devgadbaria", "Dhanpur", "Fatepura", "Garbada", "Jhalod", "Limkheda", "Sanjeli", "Singvad"],  // :contentReference[oaicite:9]{index=9}
  "Dangs": ["Ahwa", "Subir", "Waghai"],  // :contentReference[oaicite:10]{index=10}
  "DevbhoomiDwarka": ["Dwarka", "Bhanvad", "Kalyanpur", "Khambhalia"],  // :contentReference[oaicite:11]{index=11}
  "Gandhinagar": ["Gandhinagar", "Dehgam", "Kalol", "Mansa"],  // :contentReference[oaicite:12]{index=12}
  "Girsomnath": ["Gir Gadhada", "Kodinar", "Sutrapada", "Talala", "Una", "Veraval"],  // :contentReference[oaicite:13]{index=13}
  "Jamnagar": ["Jamnagar", "Jamjodhpur", "Jodiya", "Lalpur", "Kalavad", "Dhrol", "Okhamandal", "Khambhalia"],  // :contentReference[oaicite:14]{index=14}
  "Junagadh": ["Junagadh City", "Junagadh Rural", "Keshod", "Mangrol", "Malia‑Hatina", "Mendarda", "Vanthali", "Visavadar", "Manavadar", "Bhesan"],  // :contentReference[oaicite:15]{index=15}
  "Kheda": ["Kheda", "Nadiad", "Kathlal", "Mahudha", "Kapadvanj", "Thasra", "Galteshwar", "Matar", "Vaso"],  // :contentReference[oaicite:16]{index=16}
  "Kutch": ["Bhuj", "Gandhidham", "Anjar", "Abdasa (Naliya)", "Mandvi", "Mundra", "Rapar", "Bhachau", "Nakhatrana", "Lakhpat"],  // :contentReference[oaicite:17]{index=17}
  "Mahisagar": ["Balasinor", "Kadana", "Khanpur", "Lunawada", "Santrampur", "Virpur"],  // :contentReference[oaicite:18]{index=18}
  "Mehsana": ["Mehsana", "Kadi", "Unjha", "Visnagar", "Vijapur", "Kheralu", "Satlasana", "Becharaji", "Jotana"],  // :contentReference[oaicite:19]{index=19}
  "Morbi": ["Morbi", "Tankara", "Wankaner", "Maliya Miyana", "Halvad"],  // :contentReference[oaicite:20]{index=20}
  "Narmada": ["Dediapada", "Garudeshwar", "Nandod", "Sagbara", "Tilakwada"],  // :contentReference[oaicite:21]{index=21}
  "Navsari": ["Navsari","Chikhli","Gandevi","Jalalpore","Khergam","Bansda"],  // :contentReference[oaicite:22]{index=22}
  "Panchmahal": ["Godhra","Halol","Kalol","Ghoghamba","Jambughoda","Shehra","Morwa‑Hadaf"],  // :contentReference[oaicite:23]{index=23}
  "Patan": ["Patan","Radhanpur","Siddhpur","Chanasma","Harij","Sami","Sarswati","Sankheshwar"],  // :contentReference[oaicite:24]{index=24}
  "Porbandar": ["Porbandar","Ranavav","Kutiyana"],  // :contentReference[oaicite:25]{index=25}
  "Rajkot": ["Rajkot","Morbi","Jasdan","Gondal","Jetpur","Upleta","Dhoraji","Kotda Sangani","Paddhari","Lodhika","Vinchhiya"],  // :contentReference[oaicite:26]{index=26}
  "Sabarkantha": ["Himatnagar","Khedbrahma","Idar","Prantij","Talod","Poshina","Vijaynagar"],  // :contentReference[oaicite:27]{index=27}
  "Surat": ["Surat City","Chorasi","Bardoli","Mangrol","Olpad","Palsana","Mandvi","Kamrej","Mahuva","Umarpada"],  // :contentReference[oaicite:28]{index=28}
  "Surendranagar": ["Surendranagar","Wadhwan","Limbdi","Chotila","Thangadh","Dasada","Lakhtar","Muli","Sayla"],  // :contentReference[oaicite:29]{index=29}
  "Tapi": ["Vyara","Songadh","Nizar","Valod","Uchhal"],  // :contentReference[oaicite:30]{index=30}
  "Vadodara": ["Vadodara City","Padra","Karjan","Savli","Sinor","Vaghodia"],  // :contentReference[oaicite:31]{index=31}
  "Valsad": ["Valsad","Vapi","Pardi","Dharampur","Umbergaon"],  // :contentReference[oaicite:32]{index=32}
    };

    const districtDropdown = document.getElementById('district');
    const subDistrictDropdown = document.getElementById('subDistrict');

    // Populate the district dropdown
    Object.keys(gujaratDistricts).forEach(district => {
        const option = document.createElement('option');
        option.value = district;
        option.textContent = district;
        districtDropdown.appendChild(option);
    });

    // Handle district selection change
    districtDropdown.addEventListener('change', function() {
        const selectedDistrict = this.value;
        
        // Clear previous options
        subDistrictDropdown.innerHTML = '<option value="">-- Select a Sub-District --</option>';
        subDistrictDropdown.disabled = true;

        if (selectedDistrict) {
            const subDistricts = gujaratDistricts[selectedDistrict];
            subDistricts.forEach(subDistrict => {
                const option = document.createElement('option');
                option.value = subDistrict;
                option.textContent = subDistrict;
                subDistrictDropdown.appendChild(option);
            });
            subDistrictDropdown.disabled = false;
        }
    });
</script>
         
    </select>

     <label>Pin :</label>
            <input type="text" name="pincode[]"  maxlength="6" required>

    <label>Household Status:</label>
            <select name="household_status[]" required>
                <option value="normal">1. Normal</option>
                <option value="locked">2. Institutional</option>
                <option value="non_residential">3. Non-residential</option>
            </select>

             <label>City/Town :</label>
             <input type="text" name="city_name[]" required>
            
             <label>Rationcard No :</label>
             <input type="text" name="r_num[]" required>
            <?php

if(isset($_SESSION['logindata']))
{ 
$logindata=$_SESSION['logindata'];

?>
<strong style="float: right;">
  <?php echo $logindata['firstname'] . ' ' . $logindata['lastname']; ?>
</strong>

<?php 

}

 ?>
          </div>

          <div>
		  
         <table id="myTable">
            <tr>
                <th>No.</th>
                <th>Name of person.</th>
                <th>Relationship with the main landlord</th>
                <th>Gender</th>
                <th>Date Of Birth</th>
                <th>Birth Palce</th>
                <th>Current marital status</th>
                <th>Religion</th>
                <th>Scheduled caste or Scheduled Tribes <br>
                    Scheduled caste..1
                    Scheduled Tribes..2
                    Other..3
                </th>
                <th>Disability</th>
                <th>Mother tongue</th>
                <th>Education</th>
                <th>Economic Activity Category</th>
                <th>Working class</th>
                <th>Non Economic Activity </th>
                <th>Annual income</th>

            
            </tr>
            <?php for($i=1;$i<=1;$i++) { ?>
            <tr id="check<?php echo $i;?>">
                <td><?php echo $i; ?></td>
                <td><input type="text" name="name[]" required></td>
                <td><input type="text" name="relation[]" required ></td>
                <td>
                    <select name="gender[]">
                        <option value="Male">Male</option>
                        <option value="Female">Female</option>
                    </select>
                </td>
                <td>
                    <input type="date" name="dob[]" required><br>
                    <input type="number" name="age[]" placeholder="Age" required>
                </td>
                <td><input type="text" name="birthpalce[]" required></td>
                <td>
                 <select id="marital_status" name="marital_status[]" required>
                            <option value="">--Please choose an option--</option>
                            <option value="single">Single/Never Married</option>
                            <option value="married">Married</option>
                            <option value="divorced">Divorced</option>
                            <option value="widowed">Widowed</option>
                            <option value="separated">Separated</option>
                            <option value="domestic_partnership">Domestic Partnership/Registered Partnership</option>
                            </select></td>
             
                <td><select id="religion" name="religion[]" required>
                    <option value="">--Please choose an option--</option>
                    <option value="christianity">Christianity</option>
                    <option value="islam">Islam</option>
                    <option value="hinduism">Hinduism</option>
                    <option value="buddhism">Buddhism</option>
                    <option value="sikhism">Sikhism</option>
                    <option value="judaism">Judaism</option>
                </select></td>
                <td>
                    <select id="caste" name="caste[]" required>
                        <option value="">--Select Caste--</option>
                        <option value="general">General</option>
                        <option value="obc">OBC (Other Backward Class)</option>
                        <option value="sc">SC (Scheduled Caste)</option>
                        <option value="st">ST (Scheduled Tribe)</option>
                        <option value="brahmin">Brahmin</option>
                        <option value="rajput">Rajput</option>
                        <option value="maratha">Maratha</option>
                        <option value="jain">Jain</option>
                        <option value="muslim">Muslim</option>
                        <option value="christian">Christian</option>
                        <option value="dalit">Dalit</option>
                        <option value="vaidya">Vaidya</option>
                        <!-- Add more castes as needed -->
  </select>
                </td>
                 <td>
                     <select id="disability" name="disability[]" required>
                                <option value="">--Select Disability--</option>
                                <option value="visual_impairment">Visual Impairment</option>
                                <option value="hearing_impairment">Hearing Impairment</option>
                                <option value="speech_disability">Speech Disability</option>
                                <option value="locomotor_disability">Locomotor Disability</option>
                                <option value="mental_retardation">Mental Retardation</option>
                                <option value="mental_illness">Mental Illness</option>
                                <option value="multiple_disabilities">Multiple Disabilities</option>
                                <option value="autism">Autism Spectrum Disorder</option>
                                <option value="cerebral_palsy">Cerebral Palsy</option>
                                <option value="learning_disability">Learning Disability</option>
                                <option value="chronic_illness">Chronic Illness</option>
                                <option value="others">Others</option>
                                      </select>
                                            </td>
                
                     <td><select id="language" name="language[]" required>
                            <option value="">--Select Language--</option>
                            <option value="gujarati">Gujarati</option>
                            <option value="hindi">Hindi</option>
                            <option value="english">English</option>
                            <option value="marathi">Marathi</option>
                            <option value="sindhi">Sindhi</option>
                            <option value="urdu">Urdu</option>
                            <option value="kutchi">Kutchi</option>
                            <option value="bhili">Bhili / Bhilodi</option>
                            <option value="garasia">Garasia</option>
                            <option value="dangi">Dangi</option>
                            <option value="vasavi">Vasavi</option>
                            <option value="halbi">Halbi</option>
                            <option value="kachchi">Kachchi (Kutch Dialect)</option>
                            <option value="rabari">Rabari</option>
                            <option value="parsi">Parsi (Parsi Gujarati)</option>
                            <option value="mewari">Mewari</option>
                            <option value="kathiyawadi">Kathiyawadi (Dialect)</option>
                            <option value="other">Other</option>
                        </select></td>

                <td><select id="education" name="education[]" required>
                    <option value="">--Select Education Level--</option>
                    <option value="no_formal_education">No Formal Education</option>
                    <option value="primary">Primary School</option>
                    <option value="middle_school">Middle School</option>
                    <option value="high_school">High School (Secondary)</option>
                    <option value="higher_secondary">Higher Secondary (12th Grade)</option>
                    <option value="diploma">Diploma</option>
                    <option value="undergraduate">Undergraduate (Bachelor's Degree)</option>
                    <option value="postgraduate">Postgraduate (Master's Degree)</option>
                    <option value="doctorate">Doctorate (PhD)</option>
                    <option value="professional_degree">Professional Degree (e.g., Medicine, Law, Engineering)</option>
                    <option value="other">Other</option>
                </select></td>
            
                <td><select id="economic_activity" name="E_A_C[]" required>
                        <option value="">--Select Economic Activity--</option>
                        <option value="Farmer">Farmer</option>
                        <option value=" labourFarmer">labourFarmer</option>
                        <option value=">Workindustry">Work in cattle industry</option>
                         <option value="other">other</option>
                       
                    </select></td>
    
                 <td><select id="working-class-jobs" name="working_class[]" required>
                <option value="">-- Select a job --</option>
                <option value="construction_worker">Construction Worker</option>
                <option value="electrician">Electrician</option>
                <option value="plumber">Plumber</option>
                <option value="carpenter">Carpenter</option>
                <option value="mechanic">Auto Mechanic</option>
                <option value="welder">Welder</option>
                <option value="factory_worker">Factory Worker</option>
                <option value="truck_driver">Truck Driver</option>
                <option value="janitor">Janitor / Custodian</option>
                <option value="cook">Cook / Line Cook</option>
                <option value="warehouse_worker">Warehouse Worker</option>
                <option value="painter">Painter</option>
                <option value="gardener">Gardener / Landscaper</option>
                <option value="security_guard">Security Guard</option>
                <option value="delivery_driver">Delivery Driver</option>
                <option value="mason">Mason / Bricklayer</option>
                <option value="roofer">Roofer</option>
                <option value="window_cleaner">Window Cleaner</option>
                <option value="fisherman">Fisherman</option>
                <option value="farm_worker">Farm Worker</option>
                </select></td>

                  <td><select id="non-economic-activities" name="Non_Eo_Ac[]" required>
                            <option value="">-- Select an activity --</option>
                            <option value="household_work">Household Work</option>
                            <option value="volunteering">Volunteering</option>
                            <option value="child_care">Taking Care of Children</option>
                            <option value="religious_practices">Religious Practices</option>
                            <option value="studying">Studying (Unpaid)</option>
                            <option value="helping_others">Helping Neighbors / Community</option>
                            <option value="gardening_hobby">Gardening (as a Hobby)</option>
                            </select></td>
                    <td><input type="text" name="annual_income[]"></td>
                     
            </tr>
            <?php } ?>
        </table>
        <center>
	   <div id="myButton" style="padding: 10px;;
    background-color: #ff9800;
    width: 5%; color:#fff; border-radius:4px; font-size:18px; " >Add Row</div>
	   
	 <button type="submit" name="data">Next</button>
<div class="inputsub" style="display:none">
            <input type="submit" id="logincu" name="submitnone">
</center> 
          </div>
   
                    
    <script src="script.js"></script>
                
 </form>
 
		
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
			<script>
                $(document).ready(function() {
                    $('#myButton').click(function() {
                var lastRow = $('#myTable tr:last');
                var html = lastRow.html();
                console.log(html); 
                var rowCount = $('#myTable tbody tr').length;
                var toralrow=rowCount -1 +1;
                // alert(toralrow);
                $('#myTable').append("<tr>"+html+"</tr>");
                $('#myTable tr:last td:first').text(toralrow);
  });
  });
</script>
</body>
</html>


<!-- <?php
include 'conphp.php';
        if (isset($_POST['data'])) 
        {
            for ($x = 0; $x < count($_POST['name']); $x++) 
            {
                
                $District=$_POST["district"][$x];
                $d_code=$_POST["d_code"][$x];
                $subDistrict=$_POST["subDistrict"][$x];
                $pincode=$_POST["pincode"][$x];
                $hs=$_POST["household_status"][$x];
                $city_name=$_POST["city_name"][$x];
                $r_num=$_POST["r_num"][$x];


                $name = $_POST["name"][$x];
	
                $relation = $_POST["relation"][$x];
                $gender = $_POST["gender"][$x];
                $dob = $_POST["dob"][$x];
                $age = $_POST["age"][$x];
        
                // Other common fields (use $_POST or default if not set)
                $birth_place = $_POST["birthpalce"][$x] ?? '';
                $marital_status = $_POST["marital_status"][$x] ?? '';


                $religion = $_POST["religion"][$x] ?? '';
                $caste = $_POST["caste"][$x] ?? '';
                $disability = $_POST["disability"][$x] ?? '';
                $mot_tonge = $_POST["language"][$x] ?? '';
                $education = $_POST["education"][$x] ?? '';
                $eco = $_POST["E_A_C"][$x] ?? '';
                $wclass = $_POST["Working_class"][$x] ?? '';
                $neco = $_POST["Non_Eo_Ac"][$x] ?? '';
                $income = $_POST["annual_income"][$x] ?? '';


                //insert data
                // $person_sql = "INSERT INTO information (
                //    District,	d_code,sub_District,Pin,Household_Status,City_Town,Rationcard_No,Name_of_person,	
                //    Relationship_with_main_landlord,Gender,Date_Of_Birth,age,Birth_Place,Current_marital_status,
                //    Religion,Caste_Category,Disability,Mother_tongue,Education,Economic_Activity_Category,
                //    Working_class,Non_Economic_Activity,Annual_incom) VALUES (?,?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,?)";

                //         $stmt = $conn->prepare($person_sql);
                //         $stmt->bind_param(
                //             "sssssssssssssssssssssss",
                //             $District, $d_code, $subDistrict, $pincode, $hs, $city_name, $r_num, $name,
                //             $relation, $gender, $dob, $age, $birth_place, $marital_status,
                //             $religion, $caste, $disability, $mot_tonge, $education, $eco, $wclass, $neco, $income
                //         );
                //         $stmt->execute();

                $person_sql = "INSERT INTO information (
                    District,	d_code,sub_District,Pin,Household_Status,City_Town,Rationcard_No,Name_of_person,	
                    Relationship_with_main_landlord,Gender,Date_Of_Birth,age,Birth_Place,Current_marital_status,
                    Religion,Caste_Category,Disability,Mother_tongue,Education,Economic_Activity_Category,
                    Working_class,Non_Economic_Activity,Annual_income) 
                    VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
                 
                 $stmt = $conn->prepare($person_sql);
                 
                 if ($stmt === false) {
                     die("Prepare failed: " . $conn->error);
                 }
                 
                 $stmt->bind_param(
                     "sssssssssssssssssssssss",
                     $District, $d_code, $subDistrict, $pincode, $hs, $city_name, $r_num, $name,
                     $relation, $gender, $dob, $age, $birth_place, $marital_status,
                     $religion, $caste, $disability, $mot_tonge, $education, $eco, $wclass, $neco, $income
                 );
                 
               //  $stmt->execute();
                 


                        }
                       

        
            echo "<script>alert('Data inserted successfully');</script>";    
        }
?>  -->
<?php
include 'conphp.php'; // your DB connection file

// Enable full error reporting for debugging
error_reporting(E_ALL);
ini_set('display_errors', 1);

if (isset($_POST['data'])) {
    // Household-wide info (outside person loop)
    $District = $_POST["district"][0] ?? '';
    $d_code = $_POST["d_code"][0] ?? '';
    $subDistrict = $_POST["subDistrict"][0] ?? '';
    $pincode = $_POST["pincode"][0] ?? '';
    $hs = $_POST["household_status"][0] ?? '';
    $city_name = $_POST["city_name"][0] ?? '';
    $r_num = $_POST["r_num"][0] ?? '';

    // Loop through each person entry
    for ($x = 0; $x < count($_POST['name']); $x++) {
        $name = $_POST["name"][$x] ?? '';
        $relation = $_POST["relation"][$x] ?? '';
        $gender = $_POST["gender"][$x] ?? '';
        $dob = $_POST["dob"][$x] ?? '';
        $age = $_POST["age"][$x] ?? '';
        $birth_place = $_POST["birthpalce"][$x] ?? '';
        $marital_status = $_POST["marital_status"][$x] ?? '';
        $religion = $_POST["religion"][$x] ?? '';
        $caste = $_POST["caste"][$x] ?? '';
        $disability = $_POST["disability"][$x] ?? '';
        $mot_tonge = $_POST["language"][$x] ?? '';
        $education = $_POST["education"][$x] ?? '';
        $eco = $_POST["E_A_C"][$x] ?? '';
        $wclass = $_POST["working_class"][$x] ?? ''; // ✅ fixed key
        $neco = $_POST["Non_Eo_Ac"][$x] ?? '';
        $income = $_POST["annual_income"][$x] ?? '';

        // Prepare the SQL insert statement
         $person_sql = "INSERT INTO information (
            District, d_code, sub_District, Pin, Household_Status, City_Town, Rationcard_No,
            Name_of_person, Relationship_with_main_landlord, Gender, Date_Of_Birth, age, 
            Birth_Place, Current_marital_status, Religion, Caste_Category, Disability, 
            Mother_tongue, Education, Economic_Activity_Category, Working_class, 
            Non_Economic_Activity, Annual_income
        ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

        $stmt = $conn->prepare($person_sql);

        if ($stmt === false) {
            die("Prepare failed: " . $conn->error);
        }

        $stmt->bind_param(
            "sssssssssssssssssssssss",
            $District, $d_code, $subDistrict, $pincode, $hs, $city_name, $r_num,
            $name, $relation, $gender, $dob, $age, $birth_place, $marital_status,
            $religion, $caste, $disability, $mot_tonge, $education, $eco, $wclass,
            $neco, $income
        );

        $stmt->execute();
     if ($stmt->error) {
		  $stmt->error;
		
            die("Execute failed for person $x: " . $stmt->error);
        }

        $stmt->close();
    }

    echo "<script>alert('Data inserted successfully'); window.location.href='sec_home_final.php';</script>";
}
?>







