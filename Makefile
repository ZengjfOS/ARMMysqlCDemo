buildrootHome=/home/aplex/rootfsArmLinux/buildroot-2016.08/
gccPath=output/host/usr/bin/arm-none-linux-gnueabi-gcc
includePath=output/build/mysql-5.1.73/include/
libPath=output/target/usr/lib/

all:
	${buildrootHome}${gccPath} -I${buildrootHome}${includePath} -L${buildrootHome}${libPath} -lmysqlclient -lz mysql.c -o mysqlDemo

clean:
	rm mysqlDemo
