New-UDDashboard -Title 'AD Manager' -Content {   

    New-UDRadioGroup -Label 'RadioGroup1' -Content {
        #Ligne1
        New-UDRow -Columns {
            #Colonne1
            New-UDColumn -LargeSize 5 -Content{
                
            }
            #Colonne2
            New-UDColumn -LargeSize 1 -Content {            
                New-UDRadio -Label 'Unitaire' -Value 'Unitaire1'
            }
            #Colonne3
            New-UDColumn -LargeSize 1 -Content {            
                New-UDRadio -Label 'Csv' -Value 'Csv1' 
                
            }
        } 
    } -OnChange {
            Show-UDToast $EventData
        
            if($EventData -eq 'Unitaire1'){
                Show-UDToast "C'est unitaire"            
            }

            if($EventData -eq 'Csv1'){
                Show-UDToast "C'est Csv"
            }
    }

        #Ligne2
        New-UDRow -Columns { 
                        
            #Colonne    
            New-UDColumn -LargeSize 2 -Content {
                New-UDTextbox -Id 'Prénom_Tab1' -Label 'Prénom'          
            }
            New-UDColumn -LargeSize 2 -Content {
                New-UDTextbox -Id 'Nom_Tab1' -Label 'Nom'
            }
            New-UDColumn -LargeSize 2 -Content{
                New-UDTextbox -Id 'UPN_Tab1' -Label 'UPN'                
            }
            New-UDColumn -LargeSize 2 -Content{
                New-UDTextbox -Id 'Suffix_UPN_Tab1' -Label 'Suffix UPN'               
            }
            New-UDColumn -LargeSize 2 -Content{
                New-UDTextbox -Id 'Telephone_Tab1' -Label 'Téléphone'                
            }        
        }
        #Ligne3
        New-UDRow -Columns { 
                        
            #Colonne    
            New-UDColumn -LargeSize 2 -Content {
                New-UDTextbox -Id 'Service_Tab1' -Label 'Service'         
            }
            New-UDColumn -LargeSize 2 -Content {
                New-UDTextbox -Id 'Fonction_Tab1' -Label 'Fonction'
            }
            New-UDColumn -LargeSize 2 -Content{
                New-UDTextbox -Id 'Adresse_Tab1' -Label 'Adresse'                
            }
            New-UDColumn -LargeSize 2 -Content{
                New-UDTextbox -Id 'OU_Tab1' -Label 'OU'               
            }
            New-UDColumn -LargeSize 2 -Content{
                New-UDTextbox -Id 'Password_Tab1' -Label 'Password' -Type password       
            }        
        }

        #Ligne3
        New-UDRow -Columns {
            New-UDColumn {
                New-UDButton -Text 'Créer' -Id 'Creer'

            }
        }

         #Ligne4
         New-UDRow -Columns { 
            
            #Colonne
            New-UDColumn -LargeSize 2 -Content {

                New-UDList -Id 'Liste1' -Content {
                    New-UDListItem -Label 'A'

                }

            }

         }








           

        
    
}

