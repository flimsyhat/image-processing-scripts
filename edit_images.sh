for image in *.png
do
	gmic $image \
	-nlmeans[-1] 4,4,8 \
	-gcd_sharpen_gradient 0.5,2 \
	--gradient_norm \
	-blend add \
	-o $image
done
