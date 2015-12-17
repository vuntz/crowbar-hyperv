# Crowbar: HyperV

The code and documentation is distributed under the [Apache 2 license](http://www.apache.org/licenses/LICENSE-2.0.html).
Contributions back to the source are encouraged.

The [Crowbar Framework](https://github.com/crowbar/crowbar) is currently maintained by [SUSE](http://www.suse.com/) as
an [OpenStack](http://openstack.org) installation framework but is prepared to be a much broader function tool. It was
originally developed by the [Dell CloudEdge Solutions Team](http://dell.com/openstack).

## Badges

[![Build Status](https://travis-ci.org/crowbar/crowbar-hyperv.svg?branch=master)](https://travis-ci.org/crowbar/crowbar-hyperv)
[![Code Climate](https://codeclimate.com/github/crowbar/crowbar-hyperv/badges/gpa.svg)](https://codeclimate.com/github/crowbar/crowbar-hyperv)
[![Test Coverage](https://codeclimate.com/github/crowbar/crowbar-hyperv/badges/coverage.svg)](https://codeclimate.com/github/crowbar/crowbar-hyperv)
[![Dependency Status](https://gemnasium.com/crowbar/crowbar-hyperv.svg)](https://gemnasium.com/crowbar/crowbar-hyperv)
[![Join the chat at https://gitter.im/crowbar/crowbar](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/crowbar/crowbar)

## Contact

To get in contact with the developers you have multiple options, all of them are listed below:

* [Google Mailinglist](https://groups.google.com/forum/#!forum/crowbar)
* [Gitter Chat](https://gitter.im/crowbar/crowbar)
* [Freenode Webchat](http://webchat.freenode.net/?channels=%23crowbar)

## Legals

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on
an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the
specific language governing permissions and limitations under the License.


## Note for manual install/testing:

This barclamp does not ship with the openstack tarballs, because they are handled in the rpm package.
In order to use this barclamp independent of the package, please run the following commands that will download the required files:

`wget http://tarballs.openstack.org/nova/nova-12.0.0.tar.gz /opt/dell/chef/cookbooks/hyperv/files/default/
wget http://tarballs.openstack.org/neutron/neutron-7.0.0.tar.gz /opt/dell/chef/cookbooks/hyperv/files/default/
wget http://tarballs.openstack.org/networking-hyperv/networking-hyperv-stable-liberty.tar.gz /opt/dell/chef/cookbooks/hyperv/files/default/
wget http://tarballs.openstack.org/ceilometer/ceilometer-5.0.0.tar.gz /opt/dell/chef/cookbooks/hyperv/files/default/`
