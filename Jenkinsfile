def db_version = "1.0.0"

piepeline {
    agent any
    stages {
        stage('Database backup') {
            steps{
                echo "Start to backup database schema."
                sh script : "./backup/backup_schema.sh"
                echo "Start to backup data."
                sh script : "./backup/backup_data.sh"
            }
        }
        stage('Database migration'){
            steps{
                echo "Start to migrate database schema."
                sh script : "./backup/migrations.sh"
            }
        }
        stage('Database data restoration'){
            steps{
                echo "Start to restore data."
                sh script : "./backup/restore.sh"
            }
        }
    }
}