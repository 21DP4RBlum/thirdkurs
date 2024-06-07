# Assuming you have a model named TeamStats with guti_varti as a CharField
import os
os.environ.setdefault("DJANGO_SETTINGS_MODULE", "project.settings")
import django
django.setup()
from handball.models import TeamStats

def clean_guti_varti():
    # Fetch all TeamStats objects
    TeamStats_objects = TeamStats.objects.all()
    
    for TeamStats in TeamStats_objects:
        # Extract the numerical part from the guti_varti field
        guti_varti = TeamStats.guti_varti
        cleaned_guti_varti = ''.join(filter(str.isdigit, guti_varti))
        
        try:
            # Update the guti_varti field with the cleaned value
            TeamStats.guti_varti = cleaned_guti_varti
            TeamStats.save()
        except Exception as e:
            print(f"Error occurred while updating guti_varti for {TeamStats}: {e}")

# Call the function to clean up the data
clean_guti_varti()
