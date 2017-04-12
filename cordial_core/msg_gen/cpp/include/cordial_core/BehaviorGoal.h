/* Auto-generated by genmsg_cpp for file /home/michellebecerra/kinetic_ws/sandbox/cordial-public/cordial_core/msg/BehaviorGoal.msg */
#ifndef CORDIAL_CORE_MESSAGE_BEHAVIORGOAL_H
#define CORDIAL_CORE_MESSAGE_BEHAVIORGOAL_H
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


namespace cordial_core
{
template <class ContainerAllocator>
struct BehaviorGoal_ {
  typedef BehaviorGoal_<ContainerAllocator> Type;

  BehaviorGoal_()
  : behavior()
  , end_move()
  , end_hold()
  , return_to_prior(false)
  , if_conflict(0)
  , args()
  , wait_and_block(false)
  {
  }

  BehaviorGoal_(const ContainerAllocator& _alloc)
  : behavior(_alloc)
  , end_move()
  , end_hold()
  , return_to_prior(false)
  , if_conflict(0)
  , args(_alloc)
  , wait_and_block(false)
  {
  }

  typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _behavior_type;
  std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  behavior;

  typedef ros::Time _end_move_type;
  ros::Time end_move;

  typedef ros::Time _end_hold_type;
  ros::Time end_hold;

  typedef uint8_t _return_to_prior_type;
  uint8_t return_to_prior;

  typedef int32_t _if_conflict_type;
  int32_t if_conflict;

  typedef std::vector<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > , typename ContainerAllocator::template rebind<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::other >  _args_type;
  std::vector<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > , typename ContainerAllocator::template rebind<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::other >  args;

  typedef uint8_t _wait_and_block_type;
  uint8_t wait_and_block;

  enum { QUEUE = 0 };
  enum { DROP = 1 };
  enum { OVERRIDE = 2 };

  typedef boost::shared_ptr< ::cordial_core::BehaviorGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::cordial_core::BehaviorGoal_<ContainerAllocator>  const> ConstPtr;
}; // struct BehaviorGoal
typedef  ::cordial_core::BehaviorGoal_<std::allocator<void> > BehaviorGoal;

typedef boost::shared_ptr< ::cordial_core::BehaviorGoal> BehaviorGoalPtr;
typedef boost::shared_ptr< ::cordial_core::BehaviorGoal const> BehaviorGoalConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::cordial_core::BehaviorGoal_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::cordial_core::BehaviorGoal_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace cordial_core

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::cordial_core::BehaviorGoal_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::cordial_core::BehaviorGoal_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::cordial_core::BehaviorGoal_<ContainerAllocator> > {
  static const char* value() 
  {
    return "cc266de8892cd33b779cfc3612c47b8f";
  }

  static const char* value(const  ::cordial_core::BehaviorGoal_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0xcc266de8892cd33bULL;
  static const uint64_t static_value2 = 0x779cfc3612c47b8fULL;
};

template<class ContainerAllocator>
struct DataType< ::cordial_core::BehaviorGoal_<ContainerAllocator> > {
  static const char* value() 
  {
    return "cordial_core/BehaviorGoal";
  }

  static const char* value(const  ::cordial_core::BehaviorGoal_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::cordial_core::BehaviorGoal_<ContainerAllocator> > {
  static const char* value() 
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
#goal definition\n\
# name of the behavior\n\
string behavior\n\
\n\
# at what time should we be finished moving/holding\n\
# holding only meaningful if blocking or return to prior is true\n\
time end_move\n\
time end_hold\n\
\n\
# return to previous pose when behavior is done?\n\
bool return_to_prior\n\
\n\
# if the relevant DOFs are in conflict, what to do?\n\
# Queue: play behavior once DOFs are free; end_move and end_hold are taken to be relative to time.now\n\
# Drop: never play the behavior\n\
# Override: cancel the current behavior and play the new one\n\
int32 if_conflict\n\
int32 QUEUE = 0\n\
int32 DROP = 1\n\
int32 OVERRIDE = 2\n\
\n\
# some behaviors may take arguments, e.g., a frame for lookat\n\
string[] args\n\
\n\
# have robot controller block on this\n\
# if true, then wait_for_result will block until the behavior is done\n\
bool wait_and_block\n\
\n\
";
  }

  static const char* value(const  ::cordial_core::BehaviorGoal_<ContainerAllocator> &) { return value(); } 
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::cordial_core::BehaviorGoal_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.behavior);
    stream.next(m.end_move);
    stream.next(m.end_hold);
    stream.next(m.return_to_prior);
    stream.next(m.if_conflict);
    stream.next(m.args);
    stream.next(m.wait_and_block);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER
}; // struct BehaviorGoal_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::cordial_core::BehaviorGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::cordial_core::BehaviorGoal_<ContainerAllocator> & v) 
  {
    s << indent << "behavior: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.behavior);
    s << indent << "end_move: ";
    Printer<ros::Time>::stream(s, indent + "  ", v.end_move);
    s << indent << "end_hold: ";
    Printer<ros::Time>::stream(s, indent + "  ", v.end_hold);
    s << indent << "return_to_prior: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.return_to_prior);
    s << indent << "if_conflict: ";
    Printer<int32_t>::stream(s, indent + "  ", v.if_conflict);
    s << indent << "args[]" << std::endl;
    for (size_t i = 0; i < v.args.size(); ++i)
    {
      s << indent << "  args[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.args[i]);
    }
    s << indent << "wait_and_block: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.wait_and_block);
  }
};


} // namespace message_operations
} // namespace ros

#endif // CORDIAL_CORE_MESSAGE_BEHAVIORGOAL_H
