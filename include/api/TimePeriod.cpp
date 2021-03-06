// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from wallet.djinni

#include "TimePeriod.hpp"  // my header
#include "enum_from_string.hpp"

namespace ledger { namespace core { namespace api {

std::string to_string(const TimePeriod& timePeriod) {
    switch (timePeriod) {
        case TimePeriod::DAY: return "DAY";
        case TimePeriod::WEEK: return "WEEK";
        case TimePeriod::MONTH: return "MONTH";
    };
};
template <>
TimePeriod from_string(const std::string& timePeriod) {
    if (timePeriod == "DAY") return TimePeriod::DAY;
    else if (timePeriod == "WEEK") return TimePeriod::WEEK;
    else return TimePeriod::MONTH;
};

std::ostream &operator<<(std::ostream &os, const TimePeriod &o)
{
    switch (o) {
        case TimePeriod::DAY:  return os << "DAY";
        case TimePeriod::WEEK:  return os << "WEEK";
        case TimePeriod::MONTH:  return os << "MONTH";
    }
}

} } }  // namespace ledger::core::api
