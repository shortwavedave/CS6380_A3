function [AgentNames_out,AgentTypes_out] = CS6380_insert_Agent_info(...
    AgentNames,AgentTypes,agent_name)
%

UNDERSCORE = '_';

AgentNames_out = AgentNames;
AgentTypes_out = AgentTypes;

% get agent type
agent_type = [];
len_mess_from = length(agent_name);
for c = 1:len_mess_from
    if agent_name(c)~=UNDERSCORE
        agent_type = [agent_type,agent_name(c)];
    else
        break
    end
end

% no agent names yet
if isempty(AgentNames)
    AgentNames_out = {agent_name};
    AgentTypes_out = {agent_type};
    return
else
    num_agents = length(AgentNames);
end

for a = 1:num_agents
    if strcmp(AgentNames{1},agent_name)
        return
    end
end

AgentNames_out{end+1} = agent_name;
AgentNames_out = AgentNames_out';
AgentTypes_out{end+1} = agent_type;
AgentTypes_out = AgentTypes_out';
