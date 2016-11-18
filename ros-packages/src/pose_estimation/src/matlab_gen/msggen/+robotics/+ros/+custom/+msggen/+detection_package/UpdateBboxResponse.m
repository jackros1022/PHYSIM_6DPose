classdef UpdateBboxResponse < robotics.ros.Message
    %UpdateBboxResponse MATLAB implementation of detection_package/UpdateBboxResponse
    %   This class was automatically generated by
    %   robotics.ros.msg.internal.gen.MessageClassGenerator.
    
    %   Copyright 2016 The MathWorks, Inc.
    
    %#ok<*INUSD>
    
    properties (Constant)
        MessageType = 'detection_package/UpdateBboxResponse' % The ROS message type
    end
    
    properties (Constant, Hidden)
        MD5Checksum = 'd4b4c0b74d20dc4fc963150efff11607' % The MD5 Checksum of the message definition
    end
    
    properties (Access = protected)
        JavaMessage % The Java message object
    end
    
    properties (Dependent)
        ObjectNum
        TlX
        TlY
        BrX
        BrY
        Scores
    end
    
    properties (Constant, Hidden)
        PropertyList = {'BrX', 'BrY', 'ObjectNum', 'Scores', 'TlX', 'TlY'} % List of non-constant message properties
        ROSPropertyList = {'br_x', 'br_y', 'object_num', 'scores', 'tl_x', 'tl_y'} % List of non-constant ROS message properties
    end
    
    methods
        function obj = UpdateBboxResponse(msg)
            %UpdateBboxResponse Construct the message object UpdateBboxResponse
            import com.mathworks.toolbox.robotics.ros.message.MessageInfo;
            
            % Support default constructor
            if nargin == 0
                obj.JavaMessage = obj.createNewJavaMessage;
                return;
            end
            
            % Construct appropriate empty array
            if isempty(msg)
                obj = obj.empty(0,1);
                return;
            end
            
            % Make scalar construction fast
            if isscalar(msg)
                % Check for correct input class
                if ~MessageInfo.compareTypes(msg(1), obj.MessageType)
                    error(message('robotics:ros:message:NoTypeMatch', obj.MessageType, ...
                        char(MessageInfo.getType(msg(1))) ));
                end
                obj.JavaMessage = msg(1);
                return;
            end
            
            % Check that this is a vector of scalar messages. Since this
            % is an object array, use arrayfun to verify.
            if ~all(arrayfun(@isscalar, msg))
                error(message('robotics:ros:message:MessageArraySizeError'));
            end
            
            % Check that all messages in the array have the correct type
            if ~all(arrayfun(@(x) MessageInfo.compareTypes(x, obj.MessageType), msg))
                error(message('robotics:ros:message:NoTypeMatchArray', obj.MessageType));
            end
            
            % Construct array of objects if necessary
            objType = class(obj);
            for i = 1:length(msg)
                obj(i,1) = feval(objType, msg(i)); %#ok<AGROW>
            end
        end
        
        function objectnum = get.ObjectNum(obj)
            %get.ObjectNum Get the value for property ObjectNum
            javaArray = obj.JavaMessage.getObjectNum;
            array = obj.readJavaArray(javaArray, 'int64');
            objectnum = int64(array);
        end
        
        function set.ObjectNum(obj, objectnum)
            %set.ObjectNum Set the value for property ObjectNum
            if ~isvector(objectnum) && isempty(objectnum)
                % Allow empty [] input
                objectnum = int64.empty(0,1);
            end
            
            validateattributes(objectnum, {'numeric'}, {'vector'}, 'UpdateBboxResponse', 'ObjectNum');
            
            javaArray = obj.JavaMessage.getObjectNum;
            array = obj.writeJavaArray(objectnum, javaArray, 'int64');
            obj.JavaMessage.setObjectNum(array);
        end
        
        function tlx = get.TlX(obj)
            %get.TlX Get the value for property TlX
            javaArray = obj.JavaMessage.getTlX;
            array = obj.readJavaArray(javaArray, 'int64');
            tlx = int64(array);
        end
        
        function set.TlX(obj, tlx)
            %set.TlX Set the value for property TlX
            if ~isvector(tlx) && isempty(tlx)
                % Allow empty [] input
                tlx = int64.empty(0,1);
            end
            
            validateattributes(tlx, {'numeric'}, {'vector'}, 'UpdateBboxResponse', 'TlX');
            
            javaArray = obj.JavaMessage.getTlX;
            array = obj.writeJavaArray(tlx, javaArray, 'int64');
            obj.JavaMessage.setTlX(array);
        end
        
        function tly = get.TlY(obj)
            %get.TlY Get the value for property TlY
            javaArray = obj.JavaMessage.getTlY;
            array = obj.readJavaArray(javaArray, 'int64');
            tly = int64(array);
        end
        
        function set.TlY(obj, tly)
            %set.TlY Set the value for property TlY
            if ~isvector(tly) && isempty(tly)
                % Allow empty [] input
                tly = int64.empty(0,1);
            end
            
            validateattributes(tly, {'numeric'}, {'vector'}, 'UpdateBboxResponse', 'TlY');
            
            javaArray = obj.JavaMessage.getTlY;
            array = obj.writeJavaArray(tly, javaArray, 'int64');
            obj.JavaMessage.setTlY(array);
        end
        
        function brx = get.BrX(obj)
            %get.BrX Get the value for property BrX
            javaArray = obj.JavaMessage.getBrX;
            array = obj.readJavaArray(javaArray, 'int64');
            brx = int64(array);
        end
        
        function set.BrX(obj, brx)
            %set.BrX Set the value for property BrX
            if ~isvector(brx) && isempty(brx)
                % Allow empty [] input
                brx = int64.empty(0,1);
            end
            
            validateattributes(brx, {'numeric'}, {'vector'}, 'UpdateBboxResponse', 'BrX');
            
            javaArray = obj.JavaMessage.getBrX;
            array = obj.writeJavaArray(brx, javaArray, 'int64');
            obj.JavaMessage.setBrX(array);
        end
        
        function bry = get.BrY(obj)
            %get.BrY Get the value for property BrY
            javaArray = obj.JavaMessage.getBrY;
            array = obj.readJavaArray(javaArray, 'int64');
            bry = int64(array);
        end
        
        function set.BrY(obj, bry)
            %set.BrY Set the value for property BrY
            if ~isvector(bry) && isempty(bry)
                % Allow empty [] input
                bry = int64.empty(0,1);
            end
            
            validateattributes(bry, {'numeric'}, {'vector'}, 'UpdateBboxResponse', 'BrY');
            
            javaArray = obj.JavaMessage.getBrY;
            array = obj.writeJavaArray(bry, javaArray, 'int64');
            obj.JavaMessage.setBrY(array);
        end
        
        function scores = get.Scores(obj)
            %get.Scores Get the value for property Scores
            javaArray = obj.JavaMessage.getScores;
            array = obj.readJavaArray(javaArray, 'double');
            scores = double(array);
        end
        
        function set.Scores(obj, scores)
            %set.Scores Set the value for property Scores
            if ~isvector(scores) && isempty(scores)
                % Allow empty [] input
                scores = double.empty(0,1);
            end
            
            validateattributes(scores, {'numeric'}, {'vector'}, 'UpdateBboxResponse', 'Scores');
            
            javaArray = obj.JavaMessage.getScores;
            array = obj.writeJavaArray(scores, javaArray, 'double');
            obj.JavaMessage.setScores(array);
        end
    end
    
    methods (Access = protected)
        function cpObj = copyElement(obj)
            %copyElement Implements deep copy behavior for message
            
            % Call default copy method for shallow copy
            cpObj = copyElement@robotics.ros.Message(obj);
            
            % Create a new Java message object
            cpObj.JavaMessage = obj.createNewJavaMessage;
            
            % Iterate over all primitive properties
            cpObj.ObjectNum = obj.ObjectNum;
            cpObj.TlX = obj.TlX;
            cpObj.TlY = obj.TlY;
            cpObj.BrX = obj.BrX;
            cpObj.BrY = obj.BrY;
            cpObj.Scores = obj.Scores;
        end
        
        function reload(obj, strObj)
            %reload Called by loadobj to assign properties
            obj.ObjectNum = strObj.ObjectNum;
            obj.TlX = strObj.TlX;
            obj.TlY = strObj.TlY;
            obj.BrX = strObj.BrX;
            obj.BrY = strObj.BrY;
            obj.Scores = strObj.Scores;
        end
    end
    
    methods (Access = ?robotics.ros.Message)
        function strObj = saveobj(obj)
            %saveobj Implements saving of message to MAT file
            
            % Return an empty element if object array is empty
            if isempty(obj)
                strObj = struct.empty;
                return
            end
            
            strObj.ObjectNum = obj.ObjectNum;
            strObj.TlX = obj.TlX;
            strObj.TlY = obj.TlY;
            strObj.BrX = obj.BrX;
            strObj.BrY = obj.BrY;
            strObj.Scores = obj.Scores;
        end
    end
    
    methods (Static, Access = {?matlab.unittest.TestCase, ?robotics.ros.Message})
        function obj = loadobj(strObj)
            %loadobj Implements loading of message from MAT file
            
            % Return an empty object array if the structure element is not defined
            if isempty(strObj)
                obj = robotics.ros.custom.msggen.detection_package.UpdateBboxResponse.empty(0,1);
                return
            end
            
            % Create an empty message object
            obj = robotics.ros.custom.msggen.detection_package.UpdateBboxResponse;
            obj.reload(strObj);
        end
    end
end
