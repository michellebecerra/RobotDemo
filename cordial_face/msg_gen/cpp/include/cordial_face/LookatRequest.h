/* Auto-generated by genmsg_cpp for file /home/michellebecerra/kinetic_ws/sandbox/cordial-public/cordial_face/msg/LookatRequest.msg */
#ifndef CORDIAL_FACE_MESSAGE_LOOKATREQUEST_H
#define CORDIAL_FACE_MESSAGE_LOOKATREQUEST_H
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


namespace cordial_face
{
template <class ContainerAllocator>
struct LookatRequest_ {
  typedef LookatRequest_<ContainerAllocator> Type;

  LookatRequest_()
  : follow_frame(false)
  , frameid()
  {
  }

  LookatRequest_(const ContainerAllocator& _alloc)
  : follow_frame(false)
  , frameid(_alloc)
  {
  }

  typedef uint8_t _follow_frame_type;
  uint8_t follow_frame;

  typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _frameid_type;
  std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  frameid;


  typedef boost::shared_ptr< ::cordial_face::LookatRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::cordial_face::LookatRequest_<ContainerAllocator>  const> ConstPtr;
}; // struct LookatRequest
typedef  ::cordial_face::LookatRequest_<std::allocator<void> > LookatRequest;

typedef boost::shared_ptr< ::cordial_face::LookatRequest> LookatRequestPtr;
typedef boost::shared_ptr< ::cordial_face::LookatRequest const> LookatRequestConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::cordial_face::LookatRequest_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::cordial_face::LookatRequest_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace cordial_face

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::cordial_face::LookatRequest_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::cordial_face::LookatRequest_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::cordial_face::LookatRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "e587150e3c50903a016b6056449cab70";
  }

  static const char* value(const  ::cordial_face::LookatRequest_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0xe587150e3c50903aULL;
  static const uint64_t static_value2 = 0x016b6056449cab70ULL;
};

template<class ContainerAllocator>
struct DataType< ::cordial_face::LookatRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "cordial_face/LookatRequest";
  }

  static const char* value(const  ::cordial_face::LookatRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::cordial_face::LookatRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "#toggles gaze following behavior\n\
bool follow_frame\n\
\n\
#the name of the frame to follow\n\
string frameid\n\
\n\
";
  }

  static const char* value(const  ::cordial_face::LookatRequest_<ContainerAllocator> &) { return value(); } 
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::cordial_face::LookatRequest_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.follow_frame);
    stream.next(m.frameid);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER
}; // struct LookatRequest_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::cordial_face::LookatRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::cordial_face::LookatRequest_<ContainerAllocator> & v) 
  {
    s << indent << "follow_frame: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.follow_frame);
    s << indent << "frameid: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.frameid);
  }
};


} // namespace message_operations
} // namespace ros

#endif // CORDIAL_FACE_MESSAGE_LOOKATREQUEST_H

