mc alias set minio1 $ONE_HOST $ONE_ACCESS_KEY $ONE_SECRET_KEY
mc alias set minio2 $TWO_HOST $TWO_ACCESS_KEY $TWO_SECRET_KEY

mc mirror --watch minio1/$ONE_BUCKET minio2/$TWO_BUCKET &

if [ $TWOWAY = true ]; then
	mc mirror --watch minio2/$TWO_BUCKET minio1/$ONE_BUCKET &
fi

sleep infinity
