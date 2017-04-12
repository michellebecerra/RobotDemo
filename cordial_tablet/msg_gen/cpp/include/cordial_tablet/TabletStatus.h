/* Auto-generated by genmsg_cpp for file /home/michellebecerra/kinetic_ws/sandbox/cordial-public/cordial_tablet/msg/TabletStatus.msg */
#ifndef CORDIAL_TABLET_MESSAGE_TABLETSTATUS_H
#define CORDIAL_TABLET_MESSAGE_TABLETSTATUS_H
#include <string>
#include <vector>
#include <map>
#include <ostream>
#include "ros/serialization.h"
#include "ros/builtin_message_traits.h"
#include "ros/message_operations.h"
#include "ros/time.h"

#include "ros/macros.h"

#include "ros/assert.h"


namespace cordial_tablet
{
template <class ContainerAllocator>
struct TabletStatus_ {
  typedef TabletStatus_<ContainerAllocator> Type;

  TabletStatus_()
  : id()
  {
  }

  TabletStatus_(const ContainerAllocator& _alloc)
  : id(_alloc)
  {
  }

  typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _id_type;
  std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  id;


  typedef boost::shared_ptr< ::cordial_tablet::TabletStatus_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::cordial_tablet::TabletStatus_<ContainerAllocator>  const> ConstPtr;
}; // struct TabletStatus
typedef  ::cordial_tablet::TabletStatus_<std::allocator<void> > TabletStatus;

typedef boost::shared_ptr< ::cordial_tablet::TabletStatus> TabletStatusPtr;
typedef boost::shared_ptr< ::cordial_tablet::TabletStatus const> TabletStatusConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::cordial_tablet::TabletStatus_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::cordial_tablet::TabletStatus_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace cordial_tablet

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::cordial_tablet::TabletStatus_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::cordial_tablet::TabletStatus_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::cordial_tablet::TabletStatus_<ContainerAllocator> > {
  static const char* value() 
  {
    return "bbfcda76036ebbe3d36caf7af80b260c";
  }

  static const char* value(const  ::cordial_tablet::TabletStatus_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0xbbfcda76036ebbe3ULL;
  static const uint64_t static_value2 = 0xd36caf7af80b260cULL;
};

template<class ContainerAllocator>
struct DataType< ::cordial_tablet::TabletStatus_<ContainerAllocator> > {
  static const char* value() 
  {
    return "cordial_tablet/TabletStatus";
  }

  static const char* value(const  ::cordial_tablet::TabletStatus_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::cordial_tablet::TabletStatus_<ContainerAllocator> > {
  static const char* value() 
  {
    return "string id\n\
";
  }

  static const char* value(const  ::cordial_tablet::TabletStatus_<ContainerAllocator> &) { return value(); } 
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::cordial_tablet::TabletStatus_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.id);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER
}; // struct TabletStatus_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::cordial_tablet::TabletStatus_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::cordial_tablet::TabletStatus_<ContainerAllocator> & v) 
  {
    s << indent << "id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.id);
  }
};


} // namespace message_operations
} // namespace ros

#endif // CORDIAL_TABLET_MESSAGE_TABLETSTATUS_H
