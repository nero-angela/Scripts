# swap 파일 생성
sudo fallocate -l 2G /swapfile && \

# 예약된 용량 확인
ls -lh /swapfile && \ 

# root만 접근 가능
sudo chmod 600 /swapfile && \

# 권한 변경 확인
ls -lh /swapfile && \

# 파일을 swap 공간으로 표시
sudo mkswap /swapfile && \

# swap 활성화
sudo swapon /swapfile && \

# 활성화 된 swap 확인
sudo swapon --show && \

# 파일 백업 (영구적으로 만들기)
sudo cp /etc/fstab /etc/fstab.bak && \
sudo echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab&& \

# caching
sudo sysctl vm.vfs_cache_pressure=50 && \
sudo /bin/su -c "echo 'vm.vfs_cache_pressure = 50' >> /etc/sysctl.conf" && free -h