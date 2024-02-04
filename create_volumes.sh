declare -a StringArray=("minio_data" "kafka_data" 
                        "postgresql_data" "mongodb_data" 
                        "metabase_data" "spark_scripts"
                        
)

for val in ${StringArray[@]};
do mkdir -p ../volumes/$val
done


for val in ${StringArray[@]};
do sudo chown 1001:1001 ../volumes/$val
done
