date > /etc/vagrant_box_build_time


useradd -d /home/vagrant -s /bin/bash -m -g vagrant vagrant

mkdir -pm 700 /home/vagrant/.ssh
echo 'ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEA6NF8iallvQVp22WDkTkyrtvp9eWW6A8YVr+kz4TjGYe7gHzIw+niNltGEFHzD8+v1I2YJ6oXevct1YeS0o9HZyN1Q9qgCgzUFtdOKLv6IedplqoPkcmF0aYet2PkEDo3MlTBckFXPITAMzF8dJSIFo9D8HfdOV0IAdx4O7PtixWKn5y2hMNG0zQPyUecp4pzC6kivAIhyfHilFR61RGL+GPXQ2MWZWFYbAGjyiYJnAmCP3NOTd0jMZEnDkbUvxhMmBYSdETk1rRgm+R4LOzFUGaHqHDLKLX+FIPKcF96hrucXzcWyLbIbEgE98OHlnVYCzRdK8jlqm8tehUc9c9WhQ== vagrant insecure public key' >> /home/vagrant/.ssh/authorized_keys
echo 'ssh-dss AAAAB3NzaC1kc3MAAACBAK5XhTsvbsvCJukbZkjW1hby2hfF3wV8CRnJiiVB0sC6xgOihWnVHowmiCVcGWMz4E8Lwsk2aRSuMA6oPYe9jKQcwUO50mGnhHaWpc+XsKG0Mc53475Q+XDfNlou5r23ZJE4WZQkEt3aEl1hg2qPT63XTuq8U3nIfVQm2IQbMWchAAAAFQCRPbS5Bse3I3MysCRkGciqCvKmzwAAAIA3T1Pxo6AYldxKOLuwIgnAStGXM0MRfOjaf0568wtpdt6lX8015h5rRUP8bahkKAyF83eQXG2w+NAJ0qIFu6vzEqvN86T5XwDQSqgOLXIw7PUK0wIbd52YCx6u5qdvNNi1uZy77xAIscfM4RfdA3BolT5uqEC1kJTN9EJ7a434gAAAAIBIOXB9EYimEyUIr7N6Q2OTFB0XamZCXLYJ/xKye2D9VPK7KFewKGZmDaq7xC89y4EkDtNcp0UFfonmahPf+14M2mPIopGbDL4prGkwB3h3F/Vup/Ci+Z3mNtI5UgP+cllUb+hxzZoXycmahuecxOKXEjSYbdcwc1gHbBf7huUiSw== vagrant-key-2' >> /home/vagrant/.ssh/authorized_keys

chmod 0600 /home/vagrant/.ssh/authorized_keys

chown -R vagrant:vagrant /home/vagrant/.ssh
restorecon -R /home/vagrant/.ssh
