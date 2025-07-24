##Show the donors having the same blood groups required by the recipient staying in the same city along with recipient details.---

select donor_id , donor_name , recipient_id , recipient_name
from blood_donor as bd inner join blood_recipient as br
where donor_blood_group = recipient_blood_group 
AND bd.city_id = br.city_id;

##Display the information of Hospital_Info_1 handled by BB_Manager whose ID is 103: 

select * from hospital_information_1
where manager_id = 103;

##List all donor from delhi and pune

select donor_name from blood_donor
where city_id IN (select city_id from city
where city_name = 'Delhi' or city_name = 'pune');

##Find all blood donor with blood group 'B+'

select * from blood_donor
where donor_blood_group = 'B+';

##Create a View of recipients and donors names having the same blood group registered on the same date.

CREATE VIEW Blood_Recipient_SameBGrp
AS  
select Blood_Donor.donor_name,blood_Recipient.recipient_name,staff_Name from 
Recording_Staff  
inner join Blood_Donor on Recording_Staff.staff_ID = Blood_Donor.staff_ID 
inner join blood_Recipient on Recording_Staff.staff_ID = blood_Recipient.staff_ID 
where Blood_Donor.donor_Blood_group = blood_Recipient.recipient_blood_group and 
Blood_Donor.donor_registration_date = blood_Recipient.recipient_registration_date;

select * from Blood_Recipient_SameBGrp;

##Find the most comman blood group among donors

select donor_blood_group , count(*) as total
from blood_donor
group by donor_blood_group
order by total desc
limit 1;

