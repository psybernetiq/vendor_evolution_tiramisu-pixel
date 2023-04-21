#
# Copyright (C) 2018 The Pixel3ROM Project
# Copyright (C) 2021 Haruka LLC.
# Copyright (C) 2021 Haruka Aita
# Copyright (C) 2021 The Evolution X Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Define security directory
PROD_CERTS := /home/user/android/evo/vendor/evolution/build/target/product/security/keys

# Somehow, our build system managed to not include releasekey in which we have to
# investigate,
# Explicitly define the default key.
#
# You can reenable these on demand.
# PRODUCT_DEFAULT_DEV_CERTIFICATE := $(PROD_CERTS)/releasekey
# PRODUCT_OTA_PUBLIC_KEYS := $(PROD_CERTS)/releasekey.x509.pem
#
PRODUCT_EXTRA_RECOVERY_KEYS := $(PROD_CERTS)/releasekey
