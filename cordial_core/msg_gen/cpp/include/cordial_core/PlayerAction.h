/* Auto-generated by genmsg_cpp for file /home/michellebecerra/kinetic_ws/sandbox/cordial-public/cordial_core/msg/PlayerAction.msg */
#ifndef CORDIAL_CORE_MESSAGE_PLAYERACTION_H
#define CORDIAL_CORE_MESSAGE_PLAYERACTION_H
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

#include "cordial_core/PlayerActionGoal.h"
#include "cordial_core/PlayerActionResult.h"
#include "cordial_core/PlayerActionFeedback.h"

namespace cordial_core
{
template <class ContainerAllocator>
struct PlayerAction_ {
  typedef PlayerAction_<ContainerAllocator> Type;

  PlayerAction_()
  : action_goal()
  , action_result()
  , action_feedback()
  {
  }

  PlayerAction_(const ContainerAllocator& _alloc)
  : action_goal(_alloc)
  , action_result(_alloc)
  , action_feedback(_alloc)
  {
  }

  typedef  ::cordial_core::PlayerActionGoal_<ContainerAllocator>  _action_goal_type;
   ::cordial_core::PlayerActionGoal_<ContainerAllocator>  action_goal;

  typedef  ::cordial_core::PlayerActionResult_<ContainerAllocator>  _action_result_type;
   ::cordial_core::PlayerActionResult_<ContainerAllocator>  action_result;

  typedef  ::cordial_core::PlayerActionFeedback_<ContainerAllocator>  _action_feedback_type;
   ::cordial_core::PlayerActionFeedback_<ContainerAllocator>  action_feedback;


  typedef boost::shared_ptr< ::cordial_core::PlayerAction_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::cordial_core::PlayerAction_<ContainerAllocator>  const> ConstPtr;
}; // struct PlayerAction
typedef  ::cordial_core::PlayerAction_<std::allocator<void> > PlayerAction;

typedef boost::shared_ptr< ::cordial_core::PlayerAction> PlayerActionPtr;
typedef boost::shared_ptr< ::cordial_core::PlayerAction const> PlayerActionConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::cordial_core::PlayerAction_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::cordial_core::PlayerAction_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace cordial_core

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::cordial_core::PlayerAction_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::cordial_core::PlayerAction_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::cordial_core::PlayerAction_<ContainerAllocator> > {
  static const char* value() 
  {
    return "101f9391745fc102665ccad61f102181";
  }

  static const char* value(const  ::cordial_core::PlayerAction_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0x101f9391745fc102ULL;
  static const uint64_t static_value2 = 0x665ccad61f102181ULL;
};

template<class ContainerAllocator>
struct DataType< ::cordial_core::PlayerAction_<ContainerAllocator> > {
  static const char* value() 
  {
    return "cordial_core/PlayerAction";
  }

  static const char* value(const  ::cordial_core::PlayerAction_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::cordial_core::PlayerAction_<ContainerAllocator> > {
  static const char* value() 
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
\n\
PlayerActionGoal action_goal\n\
PlayerActionResult action_result\n\
PlayerActionFeedback action_feedback\n\
\n\
================================================================================\n\
MSG: cordial_core/PlayerActionGoal\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
\n\
Header header\n\
actionlib_msgs/GoalID goal_id\n\
PlayerGoal goal\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: actionlib_msgs/GoalID\n\
# The stamp should store the time at which this goal was requested.\n\
# It is used by an action server when it tries to preempt all\n\
# goals that were requested before a certain time\n\
time stamp\n\
\n\
# The id provides a way to associate feedback and\n\
# result message with specific goal requests. The id\n\
# specified must be unique.\n\
string id\n\
\n\
\n\
================================================================================\n\
MSG: cordial_core/PlayerGoal\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
#goal definition\n\
string phrase\n\
bool interrupt\n\
\n\
================================================================================\n\
MSG: cordial_core/PlayerActionResult\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
\n\
Header header\n\
actionlib_msgs/GoalStatus status\n\
PlayerResult result\n\
\n\
================================================================================\n\
MSG: actionlib_msgs/GoalStatus\n\
GoalID goal_id\n\
uint8 status\n\
uint8 PENDING         = 0   # The goal has yet to be processed by the action server\n\
uint8 ACTIVE          = 1   # The goal is currently being processed by the action server\n\
uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing\n\
                            #   and has since completed its execution (Terminal State)\n\
uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)\n\
uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due\n\
                            #    to some failure (Terminal State)\n\
uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,\n\
                            #    because the goal was unattainable or invalid (Terminal State)\n\
uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing\n\
                            #    and has not yet completed execution\n\
uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,\n\
                            #    but the action server has not yet confirmed that the goal is canceled\n\
uint8 RECALLED        = 8   # The goal received a cancel request before it started executing\n\
                            #    and was successfully cancelled (Terminal State)\n\
uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be\n\
                            #    sent over the wire by an action server\n\
\n\
#Allow for the user to associate a string with GoalStatus for debugging\n\
string text\n\
\n\
\n\
================================================================================\n\
MSG: cordial_core/PlayerResult\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
#result definition\n\
int32 result\n\
int32 DONE = 1\n\
\n\
================================================================================\n\
MSG: cordial_core/PlayerActionFeedback\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
\n\
Header header\n\
actionlib_msgs/GoalStatus status\n\
PlayerFeedback feedback\n\
\n\
================================================================================\n\
MSG: cordial_core/PlayerFeedback\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
#feedback\n\
string behavior\n\
\n\
\n\
";
  }

  static const char* value(const  ::cordial_core::PlayerAction_<ContainerAllocator> &) { return value(); } 
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::cordial_core::PlayerAction_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.action_goal);
    stream.next(m.action_result);
    stream.next(m.action_feedback);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER
}; // struct PlayerAction_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::cordial_core::PlayerAction_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::cordial_core::PlayerAction_<ContainerAllocator> & v) 
  {
    s << indent << "action_goal: ";
s << std::endl;
    Printer< ::cordial_core::PlayerActionGoal_<ContainerAllocator> >::stream(s, indent + "  ", v.action_goal);
    s << indent << "action_result: ";
s << std::endl;
    Printer< ::cordial_core::PlayerActionResult_<ContainerAllocator> >::stream(s, indent + "  ", v.action_result);
    s << indent << "action_feedback: ";
s << std::endl;
    Printer< ::cordial_core::PlayerActionFeedback_<ContainerAllocator> >::stream(s, indent + "  ", v.action_feedback);
  }
};


} // namespace message_operations
} // namespace ros

#endif // CORDIAL_CORE_MESSAGE_PLAYERACTION_H

