use zoopark
SELECT Animal.Hight,Animal.Weigth,[Animal name]=PassportAnimal.Name,PassportAnimal.[Data Birth],
Animal.[Date join],PassportAnimal.Childs,'',''
FROM Animal,PassportAnimal,MedicalCard
WHERE PassportAnimal.Name='Стимми' AND
PassportAnimal.passportAnimaID=Animal.passportAnimaID AND
PassportAnimal.MedicalCardID=MedicalCard.medicalCardID
UNION all
SELECT '','','','','','',Vaccinations.Name as Vaccinations,''
FROM Vaccinations,VaccinationsList,MedicalCard,PassportAnimal
WHERE   PassportAnimal.Name='Стимми' AND
PassportAnimal.MedicalCardID=MedicalCard.medicalCardID AND
MedicalCard.medicalCardID=VaccinationsList.idMedCard AND
VaccinationsList.vaccinationID=Vaccinations.vaccinationID
UNION all
SELECT '','','','','','','',Disease.Name as Diseases 
FROM Disease,DiseaseList    ,MedicalCard,PassportAnimal
WHERE   PassportAnimal.Name='Стимми' AND
PassportAnimal.MedicalCardID=MedicalCard.medicalCardID AND
MedicalCard.medicalCardID=DiseaseList.idMedCard AND
DiseaseList.diseaseID=Disease.diseaseID
GO
