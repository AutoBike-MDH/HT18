﻿<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="16008000">
	<Item Name="My Computer" Type="My Computer">
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="Dependencies" Type="Dependencies"/>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
	<Item Name="NI-roboRIO-030cbd6b" Type="RT roboRIO">
		<Property Name="alias.name" Type="Str">NI-roboRIO-030cbd6b</Property>
		<Property Name="alias.value" Type="Str">172.22.11.2</Property>
		<Property Name="CCSymbols" Type="Str">TARGET_TYPE,RT;OS,Linux;CPU,ARM;DeviceCode,76F2;FPGAPersonality,roboRIO_FP_Custom;</Property>
		<Property Name="crio.ControllerPID" Type="Str">76F2</Property>
		<Property Name="host.ResponsivenessCheckEnabled" Type="Bool">true</Property>
		<Property Name="host.ResponsivenessCheckPingDelay" Type="UInt">5000</Property>
		<Property Name="host.ResponsivenessCheckPingTimeout" Type="UInt">1000</Property>
		<Property Name="host.TargetCPUID" Type="UInt">8</Property>
		<Property Name="host.TargetOSID" Type="UInt">8</Property>
		<Property Name="target.cleanupVisa" Type="Bool">false</Property>
		<Property Name="target.FPProtocolGlobals_ControlTimeLimit" Type="Int">300</Property>
		<Property Name="target.getDefault-&gt;WebServer.Port" Type="Int">80</Property>
		<Property Name="target.getDefault-&gt;WebServer.Timeout" Type="Int">60</Property>
		<Property Name="target.IOScan.Faults" Type="Str"></Property>
		<Property Name="target.IOScan.NetVarPeriod" Type="UInt">100</Property>
		<Property Name="target.IOScan.NetWatchdogEnabled" Type="Bool">false</Property>
		<Property Name="target.IOScan.Period" Type="UInt">10000</Property>
		<Property Name="target.IOScan.PowerupMode" Type="UInt">0</Property>
		<Property Name="target.IOScan.Priority" Type="UInt">0</Property>
		<Property Name="target.IOScan.ReportModeConflict" Type="Bool">true</Property>
		<Property Name="target.IsRemotePanelSupported" Type="Bool">true</Property>
		<Property Name="target.RTCPULoadMonitoringEnabled" Type="Bool">true</Property>
		<Property Name="target.RTDebugWebServerHTTPPort" Type="Int">8001</Property>
		<Property Name="target.RTTarget.ApplicationPath" Type="Path">/home/lvuser/natinst/bin/AutoBikeFuzzy.rtexe</Property>
		<Property Name="target.RTTarget.EnableFileSharing" Type="Bool">true</Property>
		<Property Name="target.RTTarget.IPAccess" Type="Str">+*</Property>
		<Property Name="target.RTTarget.LaunchAppAtBoot" Type="Bool">true</Property>
		<Property Name="target.RTTarget.VIPath" Type="Path">/home/lvuser/natinst/bin</Property>
		<Property Name="target.server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="target.server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="target.server.tcp.access" Type="Str">+*</Property>
		<Property Name="target.server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="target.server.tcp.paranoid" Type="Bool">true</Property>
		<Property Name="target.server.tcp.port" Type="Int">3363</Property>
		<Property Name="target.server.tcp.serviceName" Type="Str">Main Application Instance/VI Server</Property>
		<Property Name="target.server.tcp.serviceName.default" Type="Str">Main Application Instance/VI Server</Property>
		<Property Name="target.server.vi.access" Type="Str">+*</Property>
		<Property Name="target.server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="target.server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="target.WebServer.Config" Type="Str">Listen 8000

NI.ServerName default
DocumentRoot "$LVSERVER_DOCROOT"
TypesConfig "$LVSERVER_CONFIGROOT/mime.types"
DirectoryIndex index.htm
WorkerLimit 10
InactivityTimeout 60

LoadModulePath "$LVSERVER_MODULEPATHS"
LoadModule LVAuth lvauthmodule
LoadModule LVRFP lvrfpmodule

#
# Pipeline Definition
#

SetConnector netConnector

AddHandler LVAuth
AddHandler LVRFP

AddHandler fileHandler ""

AddOutputFilter chunkFilter


</Property>
		<Property Name="target.WebServer.Enabled" Type="Bool">false</Property>
		<Property Name="target.WebServer.LogEnabled" Type="Bool">false</Property>
		<Property Name="target.WebServer.LogPath" Type="Path">/c/ni-rt/system/www/www.log</Property>
		<Property Name="target.WebServer.Port" Type="Int">80</Property>
		<Property Name="target.WebServer.RootPath" Type="Path">/c/ni-rt/system/www</Property>
		<Property Name="target.WebServer.TcpAccess" Type="Str">c+*</Property>
		<Property Name="target.WebServer.Timeout" Type="Int">60</Property>
		<Property Name="target.WebServer.ViAccess" Type="Str">+*</Property>
		<Property Name="target.webservices.SecurityAPIKey" Type="Str">PqVr/ifkAQh+lVrdPIykXlFvg12GhhQFR8H9cUhphgg=:pTe9HRlQuMfJxAG6QCGq7UvoUpJzAzWGKy5SbZ+roSU=</Property>
		<Property Name="target.webservices.ValidTimestampWindow" Type="Int">15</Property>
		<Item Name="SubVIs" Type="Folder">
			<Item Name="Brake controller" Type="Folder">
				<Item Name="Brake.vi" Type="VI" URL="../Sub VIs/Brake controll/Brake.vi"/>
				<Item Name="BrakeControl.vi" Type="VI" URL="../Sub VIs/Brake controll/BrakeControl.vi"/>
			</Item>
			<Item Name="IMU" Type="Folder">
				<Item Name="IMUcalc Bias.vi" Type="VI" URL="../Sub VIs/IMU/IMUcalc Bias.vi"/>
				<Item Name="IMUconfig.vi" Type="VI" URL="../Sub VIs/IMU/IMUconfig.vi"/>
				<Item Name="IMUprocess live readings.vi" Type="VI" URL="../Sub VIs/IMU/IMUprocess live readings.vi"/>
				<Item Name="IMUprocess.vi" Type="VI" URL="../Sub VIs/IMU/IMUprocess.vi"/>
				<Item Name="IMUread.vi" Type="VI" URL="../Sub VIs/IMU/IMUread.vi"/>
				<Item Name="IMUrollpitch.vi" Type="VI" URL="../Sub VIs/IMU/IMUrollpitch.vi"/>
			</Item>
			<Item Name="Close Down.vi" Type="VI" URL="../Sub VIs/Close Down.vi"/>
			<Item Name="Current Sensor.vi" Type="VI" URL="../Sub VIs/Current Sensor.vi"/>
			<Item Name="Fuzzy Controller.vi" Type="VI" URL="../Sub VIs/Fuzzy/Fuzzy Controller.vi"/>
		</Item>
		<Item Name="Bias control.ctl" Type="VI" URL="../Bias control.ctl"/>
		<Item Name="Chassis" Type="roboRIO Chassis">
			<Property Name="crio.ProgrammingMode" Type="Str">fpga</Property>
			<Property Name="crio.ResourceID" Type="Str">RIO0</Property>
			<Property Name="crio.Type" Type="Str">roboRIO</Property>
			<Item Name="FPGA Target" Type="FPGA Target">
				<Property Name="AutoRun" Type="Bool">false</Property>
				<Property Name="configString.guid" Type="Str">{06B3F24A-6FA8-48FC-85E1-B75157BFEBBA}resource=/MXP/AI0;0;ReadMethodType=U16{08DDED8C-C667-401D-846C-96B20B7AF820}resource=/AccelerationX;0;ReadMethodType=I16{099CB7CC-A6E6-4AE5-A8AE-02936CE5F2BB}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev0;0;ReadMethodType=bool;WriteMethodType=bool{0D35A014-1D78-4E5B-982E-4722637629DE}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO10;0;ReadMethodType=bool;WriteMethodType=bool{0F9EEDA4-096B-4086-A23B-4F162A34F6BD}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO12;0;ReadMethodType=bool;WriteMethodType=bool{127836BF-FA7D-4FA6-A568-09894E1C88C1}resource=/AccelerationZ;0;ReadMethodType=I16{1A9FA34B-F010-477C-B41C-F3AD842A9A00}resource=/AnalogIn3;0;ReadMethodType=U16{1AD26CE9-A067-400C-9331-E9151A07E96B}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO4;0;ReadMethodType=bool;WriteMethodType=bool{1C262ECF-F3A0-4543-8DF9-DF4CC8BCD5EC}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO3;0;ReadMethodType=bool;WriteMethodType=bool{1FD478CF-3727-42DB-B4FC-387533EE48EE}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd0;0;ReadMethodType=bool;WriteMethodType=bool{226B8611-5EF9-4DAC-8E96-E6EE62563467}resource=/AnalogIn0;0;ReadMethodType=U16{2429CE37-4D27-4380-9775-E5C751E233EB}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev3;0;ReadMethodType=bool;WriteMethodType=bool{26FD37FF-4EAA-45C3-8DC3-B45A7DECF84C}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS0;0;ReadMethodType=bool;WriteMethodType=bool{2A878FF9-08BF-4BED-9A2B-93D6C8278EAA}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Mode LED Red;0;ReadMethodType=bool;WriteMethodType=bool{3024DAC8-C660-4F4F-984F-CC67B06B5FF9}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RSL;0;ReadMethodType=bool;WriteMethodType=bool{35A85E25-5248-49A2-9FCB-8D0C2288F02C}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO6;0;ReadMethodType=bool;WriteMethodType=bool{38C9F367-2562-4702-93EA-6DFDF26B73C7}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO9;0;ReadMethodType=bool;WriteMethodType=bool{3A64A103-2CA3-4E7B-9431-D94F8FEC9E48}resource=/AccelerationY;0;ReadMethodType=I16{40285E89-4BBB-4864-B9C0-3412186A21C1}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd3;0;ReadMethodType=bool;WriteMethodType=bool{42266E28-1E03-4562-AF12-FE9A00162EF0}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM0;0;ReadMethodType=bool;WriteMethodType=bool{423297AA-1227-42D2-8FA6-3EBF65E59DAD}resource=/MXP/AI3;0;ReadMethodType=U16{424EAB1B-D4B8-4F86-996A-FAE0642E1C97}resource=/AnalogIn2;0;ReadMethodType=U16{4FE67C9A-9802-43ED-9945-218400825E07}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM8;0;ReadMethodType=bool;WriteMethodType=bool{505A65DA-7D69-4F9B-BD51-B02E62EFE4DB}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Radio LED Red;0;ReadMethodType=bool;WriteMethodType=bool{50934D24-8842-44A4-AF8B-CC404EEF8CC2}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO1;0;ReadMethodType=bool;WriteMethodType=bool{5243B07E-3797-4BC5-A785-95F1ADCA303F}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO4;0;ReadMethodType=bool;WriteMethodType=bool{52E58108-DA80-4EE9-AA76-584AC9F1FA5B}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO3;0;ReadMethodType=bool;WriteMethodType=bool{598CBDE3-A4ED-49F0-BDCA-347B696E37CC}resource=/MXP/AO0;0;WriteMethodType=U16{5ADEC30D-F452-4AD4-9BDA-669DD2B67725}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev1;0;ReadMethodType=bool;WriteMethodType=bool{661214A1-9FE7-4608-8D37-DF5C3DA4E0FB}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO8;0;ReadMethodType=bool;WriteMethodType=bool{66BD0067-4775-4109-8B33-A226469B06A0}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/I2C SDA;0;ReadMethodType=bool;WriteMethodType=bool{671B80DC-B818-4E5F-8127-C7988476B281}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS1;0;ReadMethodType=bool;WriteMethodType=bool{6BE03960-5D09-4F90-824B-BFE78DB60FF7}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CLK;0;ReadMethodType=bool;WriteMethodType=bool{6C7A922F-EEEB-4284-9FE8-0873933D8B33}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO14;0;ReadMethodType=bool;WriteMethodType=bool{70A119CA-D592-4134-AC93-16E483BB1C4F}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS2;0;ReadMethodType=bool;WriteMethodType=bool{734235B6-EAEB-455B-83D7-61F9CAE2B4AC}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd2;0;ReadMethodType=bool;WriteMethodType=bool{75C8F67F-8C26-431B-B86C-35694CD42CC1}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI MISO;0;ReadMethodType=bool;WriteMethodType=bool{80ACD959-D721-4879-B11E-582127F1CAC4}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM6;0;ReadMethodType=bool;WriteMethodType=bool{848DD97C-8C34-493E-A826-5F6560C0B833}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO0;0;ReadMethodType=bool;WriteMethodType=bool{85EC9EA8-0209-4FC4-BCFB-AC03D20AE1D1}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM7;0;ReadMethodType=bool;WriteMethodType=bool{8A466FD8-14B9-437F-8E4E-7FA79FA579F3}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO7;0;ReadMethodType=bool;WriteMethodType=bool{8C8AA6A5-8224-46F6-A17D-E7D592F27654}resource=/System Reset;0;ReadMethodType=bool;WriteMethodType=bool{98C2140B-6F33-40AA-A5F3-029767CA2B7E}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Mode LED Green;0;ReadMethodType=bool;WriteMethodType=bool{99029B90-24F7-4492-8D74-1622CC87F002}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM1;0;ReadMethodType=bool;WriteMethodType=bool{9D10B450-E368-4BA7-A2BC-3C9DFDC7312A}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO5;0;ReadMethodType=bool;WriteMethodType=bool{9E7F4086-37C0-4C92-BB56-C4ED769E5CA1}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO13;0;ReadMethodType=bool;WriteMethodType=bool{9FA2B2B4-2F13-4E1A-B602-E19BF2CFCDC1}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO8;0;ReadMethodType=bool;WriteMethodType=bool{A0E2C02B-6A1C-4BEF-90A2-790826CE1250}resource=/MXP/AO1;0;WriteMethodType=U16{A44ED442-E0AD-4F58-A7D6-EF96A935C2E2}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO7:0;0;ReadMethodType=u8;WriteMethodType=u8{A6ECD00E-81A8-4831-ACB3-10F3DB2CC3B6}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI MOSI;0;ReadMethodType=bool;WriteMethodType=bool{A8569FF9-8900-40B5-A35E-CD07EA36E8D2}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO9;0;ReadMethodType=bool;WriteMethodType=bool{A8CAE1AB-0B72-4DEC-8433-7E33CD2F4B73}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Comm LED Green;0;ReadMethodType=bool;WriteMethodType=bool{A8F9E728-EE86-4FBF-A622-EB9A26A86D1C}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Comm LED Red;0;ReadMethodType=bool;WriteMethodType=bool{B240366A-02B5-428C-824B-E35276773A81}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO11;0;ReadMethodType=bool;WriteMethodType=bool{B271F597-4071-44B1-BD58-BE9D078D957E}resource=/MXP/AI2;0;ReadMethodType=U16{BC3C1439-8672-4CBB-B136-3297185D6D30}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO5;0;ReadMethodType=bool;WriteMethodType=bool{BC963F8E-96E1-409F-BE55-DD80757E29FC}ResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000.000000;MaxFreq=40000000.000000;VariableFreq=0;NomFreq=40000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;{BE86254C-58E8-48BA-BF73-594E2E2F59A8}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO0;0;ReadMethodType=bool;WriteMethodType=bool{BF9374BD-328E-4F6A-B364-39B8B39CCFE8}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO2;0;ReadMethodType=bool;WriteMethodType=bool{C2F60ADE-329E-42D1-848A-53CFC82947EC}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO6;0;ReadMethodType=bool;WriteMethodType=bool{C43CF101-E9BD-492A-80AD-00B23A1FA393}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Radio LED Green;0;ReadMethodType=bool;WriteMethodType=bool{C6A88FD2-064C-4278-AD78-6DA8603662D5}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM3;0;ReadMethodType=bool;WriteMethodType=bool{C8DEABDA-8B81-4204-8FCF-579B00FE2DA3}resource=/AnalogIn1;0;ReadMethodType=U16{CC8391C5-49F8-46B5-9E3A-76F48BCD105D}resource=/MXP/AI1;0;ReadMethodType=U16{CCE60EB5-D3FD-4FE1-B566-8F8166B8DCAA}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM2;0;ReadMethodType=bool;WriteMethodType=bool{D566176E-D5A7-408F-ABF6-E4C5BF2232EE}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO1;0;ReadMethodType=bool;WriteMethodType=bool{DC33EB86-7244-4896-A82B-FBCFA70680D4}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO7;0;ReadMethodType=bool;WriteMethodType=bool{DE6AC190-6EC3-4BC2-AFEE-66AD03BBC0E3}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev2;0;ReadMethodType=bool;WriteMethodType=bool{E285CAA0-4E06-4BDD-BF4A-91E09D69DD72}NumberOfSyncRegistersForReadInProject=Auto;resource=/User Button;0;ReadMethodType=bool{E3D7EBE9-A060-4269-A99E-DC9F4BA6C6D3}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM9;0;ReadMethodType=bool;WriteMethodType=bool{E7B24FC7-AF1C-4EA3-BEF7-85359D292AC5}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO2;0;ReadMethodType=bool;WriteMethodType=bool{EB341279-8987-4228-9730-FB06EF5F95E4}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd1;0;ReadMethodType=bool;WriteMethodType=bool{ED9BD174-ED33-4F2E-A24C-E6D200C5E144}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM4;0;ReadMethodType=bool;WriteMethodType=bool{F6036ED0-66D5-4FA8-A6B6-F612DA0C941B}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO15;0;ReadMethodType=bool;WriteMethodType=bool{F6045A6B-E35B-47C8-93C0-36C49FC65D51}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS3;0;ReadMethodType=bool;WriteMethodType=bool{F75A7A1B-8511-4F7D-A4E1-319EED226DC2}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM5;0;ReadMethodType=bool;WriteMethodType=bool{F819B1CC-56D7-4D06-A152-050815D21C85}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/I2C SCL;0;ReadMethodType=bool;WriteMethodType=bool{FA3F7476-7909-46A0-AC81-FF959D35B452}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO15:8;0;ReadMethodType=u8;WriteMethodType=u8roboRIO/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSROBORIOFPGA_TARGET_FAMILYZYNQTARGET_TYPEFPGA</Property>
				<Property Name="configString.name" Type="Str">40 MHz Onboard ClockResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000.000000;MaxFreq=40000000.000000;VariableFreq=0;NomFreq=40000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;AccelerationXresource=/AccelerationX;0;ReadMethodType=I16AccelerationYresource=/AccelerationY;0;ReadMethodType=I16AccelerationZresource=/AccelerationZ;0;ReadMethodType=I16AnalogIn0resource=/AnalogIn0;0;ReadMethodType=U16AnalogIn1resource=/AnalogIn1;0;ReadMethodType=U16AnalogIn2resource=/AnalogIn2;0;ReadMethodType=U16AnalogIn3resource=/AnalogIn3;0;ReadMethodType=U16Comm LED GreenArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Comm LED Green;0;ReadMethodType=bool;WriteMethodType=boolComm LED RedArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Comm LED Red;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO0;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO1ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO1;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO2ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO2;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO3ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO3;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO4ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO4;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO5ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO5;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO6ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO6;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO7ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO7;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO8ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO8;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO9ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO9;0;ReadMethodType=bool;WriteMethodType=boolI2C SCLArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/I2C SCL;0;ReadMethodType=bool;WriteMethodType=boolI2C SDAArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/I2C SDA;0;ReadMethodType=bool;WriteMethodType=boolMode LED GreenArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Mode LED Green;0;ReadMethodType=bool;WriteMethodType=boolMode LED RedArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Mode LED Red;0;ReadMethodType=bool;WriteMethodType=boolMXP/AI0resource=/MXP/AI0;0;ReadMethodType=U16MXP/AI1resource=/MXP/AI1;0;ReadMethodType=U16MXP/AI2resource=/MXP/AI2;0;ReadMethodType=U16MXP/AI3resource=/MXP/AI3;0;ReadMethodType=U16MXP/AO0resource=/MXP/AO0;0;WriteMethodType=U16MXP/AO1resource=/MXP/AO1;0;WriteMethodType=U16MXP/DIO0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO0;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO10ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO10;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO11ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO11;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO12ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO12;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO13ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO13;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO14ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO14;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO15:8ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO15:8;0;ReadMethodType=u8;WriteMethodType=u8MXP/DIO15ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO15;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO1ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO1;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO2ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO2;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO3ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO3;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO4ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO4;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO5ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO5;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO6ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO6;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO7:0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO7:0;0;ReadMethodType=u8;WriteMethodType=u8MXP/DIO7ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO7;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO8ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO8;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO9ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO9;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM0ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM0;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM1ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM1;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM2ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM2;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM3ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM3;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM4ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM4;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM5ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM5;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM6ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM6;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM7ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM7;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM8ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM8;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM9ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM9;0;ReadMethodType=bool;WriteMethodType=boolRadio LED GreenArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Radio LED Green;0;ReadMethodType=bool;WriteMethodType=boolRadio LED RedArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Radio LED Red;0;ReadMethodType=bool;WriteMethodType=boolRelayFwd0ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd0;0;ReadMethodType=bool;WriteMethodType=boolRelayFwd1ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd1;0;ReadMethodType=bool;WriteMethodType=boolRelayFwd2ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd2;0;ReadMethodType=bool;WriteMethodType=boolRelayFwd3ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd3;0;ReadMethodType=bool;WriteMethodType=boolRelayRev0ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev0;0;ReadMethodType=bool;WriteMethodType=boolRelayRev1ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev1;0;ReadMethodType=bool;WriteMethodType=boolRelayRev2ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev2;0;ReadMethodType=bool;WriteMethodType=boolRelayRev3ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev3;0;ReadMethodType=bool;WriteMethodType=boolroboRIO/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSROBORIOFPGA_TARGET_FAMILYZYNQTARGET_TYPEFPGARSLArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RSL;0;ReadMethodType=bool;WriteMethodType=boolSPI CLKArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CLK;0;ReadMethodType=bool;WriteMethodType=boolSPI CS0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS0;0;ReadMethodType=bool;WriteMethodType=boolSPI CS1ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS1;0;ReadMethodType=bool;WriteMethodType=boolSPI CS2ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS2;0;ReadMethodType=bool;WriteMethodType=boolSPI CS3ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS3;0;ReadMethodType=bool;WriteMethodType=boolSPI MISOArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI MISO;0;ReadMethodType=bool;WriteMethodType=boolSPI MOSIArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI MOSI;0;ReadMethodType=bool;WriteMethodType=boolSystem Resetresource=/System Reset;0;ReadMethodType=bool;WriteMethodType=boolUser ButtonNumberOfSyncRegistersForReadInProject=Auto;resource=/User Button;0;ReadMethodType=bool</Property>
				<Property Name="Mode" Type="Int">0</Property>
				<Property Name="NI.LV.FPGA.CompileConfigString" Type="Str">roboRIO/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSROBORIOFPGA_TARGET_FAMILYZYNQTARGET_TYPEFPGA</Property>
				<Property Name="NI.LV.FPGA.Version" Type="Int">6</Property>
				<Property Name="niFpga_TopLevelVIID" Type="Path">/C/Users/gusta/Desktop/AutoBike version1/AutoBike FPGA.vi</Property>
				<Property Name="Resource Name" Type="Str">RIO0</Property>
				<Property Name="Target Class" Type="Str">roboRIO</Property>
				<Property Name="Top-Level Timing Source" Type="Str">40 MHz Onboard Clock</Property>
				<Property Name="Top-Level Timing Source Is Default" Type="Bool">true</Property>
				<Item Name="Analog" Type="Folder">
					<Item Name="AnalogIn0" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/AnalogIn0</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{226B8611-5EF9-4DAC-8E96-E6EE62563467}</Property>
					</Item>
					<Item Name="AnalogIn1" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/AnalogIn1</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{C8DEABDA-8B81-4204-8FCF-579B00FE2DA3}</Property>
					</Item>
					<Item Name="AnalogIn2" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/AnalogIn2</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{424EAB1B-D4B8-4F86-996A-FAE0642E1C97}</Property>
					</Item>
					<Item Name="AnalogIn3" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/AnalogIn3</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{1A9FA34B-F010-477C-B41C-F3AD842A9A00}</Property>
					</Item>
				</Item>
				<Item Name="DIO" Type="Folder">
					<Item Name="DIO/DIO0" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/DIO/DIO0</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{BE86254C-58E8-48BA-BF73-594E2E2F59A8}</Property>
					</Item>
					<Item Name="DIO/DIO1" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/DIO/DIO1</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{D566176E-D5A7-408F-ABF6-E4C5BF2232EE}</Property>
					</Item>
					<Item Name="DIO/DIO2" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/DIO/DIO2</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{E7B24FC7-AF1C-4EA3-BEF7-85359D292AC5}</Property>
					</Item>
					<Item Name="DIO/DIO3" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/DIO/DIO3</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{52E58108-DA80-4EE9-AA76-584AC9F1FA5B}</Property>
					</Item>
					<Item Name="DIO/DIO4" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/DIO/DIO4</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{1AD26CE9-A067-400C-9331-E9151A07E96B}</Property>
					</Item>
					<Item Name="DIO/DIO5" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/DIO/DIO5</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{BC3C1439-8672-4CBB-B136-3297185D6D30}</Property>
					</Item>
					<Item Name="DIO/DIO6" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/DIO/DIO6</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{C2F60ADE-329E-42D1-848A-53CFC82947EC}</Property>
					</Item>
					<Item Name="DIO/DIO7" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/DIO/DIO7</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{DC33EB86-7244-4896-A82B-FBCFA70680D4}</Property>
					</Item>
					<Item Name="DIO/DIO8" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/DIO/DIO8</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{661214A1-9FE7-4608-8D37-DF5C3DA4E0FB}</Property>
					</Item>
					<Item Name="DIO/DIO9" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/DIO/DIO9</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{A8569FF9-8900-40B5-A35E-CD07EA36E8D2}</Property>
					</Item>
				</Item>
				<Item Name="I2C" Type="Folder">
					<Item Name="I2C SCL" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/I2C SCL</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{F819B1CC-56D7-4D06-A152-050815D21C85}</Property>
					</Item>
					<Item Name="I2C SDA" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/I2C SDA</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{66BD0067-4775-4109-8B33-A226469B06A0}</Property>
					</Item>
				</Item>
				<Item Name="MXP" Type="Folder">
					<Item Name="Analog" Type="Folder">
						<Item Name="MXP/AI0" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/MXP/AI0</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{06B3F24A-6FA8-48FC-85E1-B75157BFEBBA}</Property>
						</Item>
						<Item Name="MXP/AI1" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/MXP/AI1</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{CC8391C5-49F8-46B5-9E3A-76F48BCD105D}</Property>
						</Item>
						<Item Name="MXP/AI2" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/MXP/AI2</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{B271F597-4071-44B1-BD58-BE9D078D957E}</Property>
						</Item>
						<Item Name="MXP/AI3" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/MXP/AI3</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{423297AA-1227-42D2-8FA6-3EBF65E59DAD}</Property>
						</Item>
						<Item Name="MXP/AO0" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/MXP/AO0</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{598CBDE3-A4ED-49F0-BDCA-347B696E37CC}</Property>
						</Item>
						<Item Name="MXP/AO1" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/MXP/AO1</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{A0E2C02B-6A1C-4BEF-90A2-790826CE1250}</Property>
						</Item>
					</Item>
					<Item Name="DIO7:0" Type="Folder">
						<Item Name="MXP/DIO0" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/MXP/DIO0</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{848DD97C-8C34-493E-A826-5F6560C0B833}</Property>
						</Item>
						<Item Name="MXP/DIO1" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/MXP/DIO1</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{50934D24-8842-44A4-AF8B-CC404EEF8CC2}</Property>
						</Item>
						<Item Name="MXP/DIO2" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/MXP/DIO2</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{BF9374BD-328E-4F6A-B364-39B8B39CCFE8}</Property>
						</Item>
						<Item Name="MXP/DIO3" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/MXP/DIO3</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{1C262ECF-F3A0-4543-8DF9-DF4CC8BCD5EC}</Property>
						</Item>
						<Item Name="MXP/DIO4" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/MXP/DIO4</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{5243B07E-3797-4BC5-A785-95F1ADCA303F}</Property>
						</Item>
						<Item Name="MXP/DIO5" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/MXP/DIO5</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{9D10B450-E368-4BA7-A2BC-3C9DFDC7312A}</Property>
						</Item>
						<Item Name="MXP/DIO6" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/MXP/DIO6</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{35A85E25-5248-49A2-9FCB-8D0C2288F02C}</Property>
						</Item>
						<Item Name="MXP/DIO7" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/MXP/DIO7</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{8A466FD8-14B9-437F-8E4E-7FA79FA579F3}</Property>
						</Item>
						<Item Name="MXP/DIO7:0" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/MXP/DIO7:0</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{A44ED442-E0AD-4F58-A7D6-EF96A935C2E2}</Property>
						</Item>
					</Item>
					<Item Name="DIO15:8" Type="Folder">
						<Item Name="MXP/DIO8" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/MXP/DIO8</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{9FA2B2B4-2F13-4E1A-B602-E19BF2CFCDC1}</Property>
						</Item>
						<Item Name="MXP/DIO9" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/MXP/DIO9</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{38C9F367-2562-4702-93EA-6DFDF26B73C7}</Property>
						</Item>
						<Item Name="MXP/DIO10" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/MXP/DIO10</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{0D35A014-1D78-4E5B-982E-4722637629DE}</Property>
						</Item>
						<Item Name="MXP/DIO11" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/MXP/DIO11</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{B240366A-02B5-428C-824B-E35276773A81}</Property>
						</Item>
						<Item Name="MXP/DIO12" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/MXP/DIO12</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{0F9EEDA4-096B-4086-A23B-4F162A34F6BD}</Property>
						</Item>
						<Item Name="MXP/DIO13" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/MXP/DIO13</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{9E7F4086-37C0-4C92-BB56-C4ED769E5CA1}</Property>
						</Item>
						<Item Name="MXP/DIO14" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/MXP/DIO14</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{6C7A922F-EEEB-4284-9FE8-0873933D8B33}</Property>
						</Item>
						<Item Name="MXP/DIO15" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/MXP/DIO15</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{F6036ED0-66D5-4FA8-A6B6-F612DA0C941B}</Property>
						</Item>
						<Item Name="MXP/DIO15:8" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/MXP/DIO15:8</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{FA3F7476-7909-46A0-AC81-FF959D35B452}</Property>
						</Item>
					</Item>
				</Item>
				<Item Name="Onboard I/O" Type="Folder">
					<Item Name="LED" Type="Folder">
						<Item Name="Comm LED Green" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/Comm LED Green</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{A8CAE1AB-0B72-4DEC-8433-7E33CD2F4B73}</Property>
						</Item>
						<Item Name="Comm LED Red" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/Comm LED Red</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{A8F9E728-EE86-4FBF-A622-EB9A26A86D1C}</Property>
						</Item>
						<Item Name="Mode LED Green" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/Mode LED Green</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{98C2140B-6F33-40AA-A5F3-029767CA2B7E}</Property>
						</Item>
						<Item Name="Mode LED Red" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/Mode LED Red</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{2A878FF9-08BF-4BED-9A2B-93D6C8278EAA}</Property>
						</Item>
						<Item Name="Radio LED Green" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/Radio LED Green</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{C43CF101-E9BD-492A-80AD-00B23A1FA393}</Property>
						</Item>
						<Item Name="Radio LED Red" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/Radio LED Red</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{505A65DA-7D69-4F9B-BD51-B02E62EFE4DB}</Property>
						</Item>
					</Item>
					<Item Name="AccelerationX" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/AccelerationX</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{08DDED8C-C667-401D-846C-96B20B7AF820}</Property>
					</Item>
					<Item Name="AccelerationY" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/AccelerationY</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{3A64A103-2CA3-4E7B-9431-D94F8FEC9E48}</Property>
					</Item>
					<Item Name="AccelerationZ" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/AccelerationZ</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{127836BF-FA7D-4FA6-A568-09894E1C88C1}</Property>
					</Item>
					<Item Name="RSL" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/RSL</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{3024DAC8-C660-4F4F-984F-CC67B06B5FF9}</Property>
					</Item>
					<Item Name="System Reset" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/System Reset</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{8C8AA6A5-8224-46F6-A17D-E7D592F27654}</Property>
					</Item>
					<Item Name="User Button" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/User Button</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{E285CAA0-4E06-4BDD-BF4A-91E09D69DD72}</Property>
					</Item>
				</Item>
				<Item Name="PWM" Type="Folder">
					<Item Name="PWM/PWM0" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/PWM/PWM0</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{42266E28-1E03-4562-AF12-FE9A00162EF0}</Property>
					</Item>
					<Item Name="PWM/PWM1" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/PWM/PWM1</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{99029B90-24F7-4492-8D74-1622CC87F002}</Property>
					</Item>
					<Item Name="PWM/PWM2" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/PWM/PWM2</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{CCE60EB5-D3FD-4FE1-B566-8F8166B8DCAA}</Property>
					</Item>
					<Item Name="PWM/PWM3" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/PWM/PWM3</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{C6A88FD2-064C-4278-AD78-6DA8603662D5}</Property>
					</Item>
					<Item Name="PWM/PWM4" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/PWM/PWM4</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{ED9BD174-ED33-4F2E-A24C-E6D200C5E144}</Property>
					</Item>
					<Item Name="PWM/PWM5" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/PWM/PWM5</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{F75A7A1B-8511-4F7D-A4E1-319EED226DC2}</Property>
					</Item>
					<Item Name="PWM/PWM6" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/PWM/PWM6</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{80ACD959-D721-4879-B11E-582127F1CAC4}</Property>
					</Item>
					<Item Name="PWM/PWM7" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/PWM/PWM7</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{85EC9EA8-0209-4FC4-BCFB-AC03D20AE1D1}</Property>
					</Item>
					<Item Name="PWM/PWM8" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/PWM/PWM8</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{4FE67C9A-9802-43ED-9945-218400825E07}</Property>
					</Item>
					<Item Name="PWM/PWM9" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/PWM/PWM9</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{E3D7EBE9-A060-4269-A99E-DC9F4BA6C6D3}</Property>
					</Item>
				</Item>
				<Item Name="Relay" Type="Folder">
					<Item Name="RelayFwd0" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/RelayFwd0</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{1FD478CF-3727-42DB-B4FC-387533EE48EE}</Property>
					</Item>
					<Item Name="RelayFwd1" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/RelayFwd1</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{EB341279-8987-4228-9730-FB06EF5F95E4}</Property>
					</Item>
					<Item Name="RelayFwd2" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/RelayFwd2</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{734235B6-EAEB-455B-83D7-61F9CAE2B4AC}</Property>
					</Item>
					<Item Name="RelayFwd3" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/RelayFwd3</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{40285E89-4BBB-4864-B9C0-3412186A21C1}</Property>
					</Item>
					<Item Name="RelayRev0" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/RelayRev0</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{099CB7CC-A6E6-4AE5-A8AE-02936CE5F2BB}</Property>
					</Item>
					<Item Name="RelayRev1" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/RelayRev1</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{5ADEC30D-F452-4AD4-9BDA-669DD2B67725}</Property>
					</Item>
					<Item Name="RelayRev2" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/RelayRev2</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{DE6AC190-6EC3-4BC2-AFEE-66AD03BBC0E3}</Property>
					</Item>
					<Item Name="RelayRev3" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/RelayRev3</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{2429CE37-4D27-4380-9775-E5C751E233EB}</Property>
					</Item>
				</Item>
				<Item Name="SPI" Type="Folder">
					<Item Name="SPI CLK" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/SPI CLK</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{6BE03960-5D09-4F90-824B-BFE78DB60FF7}</Property>
					</Item>
					<Item Name="SPI CS0" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/SPI CS0</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{26FD37FF-4EAA-45C3-8DC3-B45A7DECF84C}</Property>
					</Item>
					<Item Name="SPI CS1" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/SPI CS1</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{671B80DC-B818-4E5F-8127-C7988476B281}</Property>
					</Item>
					<Item Name="SPI CS2" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/SPI CS2</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{70A119CA-D592-4134-AC93-16E483BB1C4F}</Property>
					</Item>
					<Item Name="SPI CS3" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/SPI CS3</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{F6045A6B-E35B-47C8-93C0-36C49FC65D51}</Property>
					</Item>
					<Item Name="SPI MISO" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/SPI MISO</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{75C8F67F-8C26-431B-B86C-35694CD42CC1}</Property>
					</Item>
					<Item Name="SPI MOSI" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/SPI MOSI</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{A6ECD00E-81A8-4831-ACB3-10F3DB2CC3B6}</Property>
					</Item>
				</Item>
				<Item Name="SubVIs FPGA" Type="Folder">
					<Item Name="Median filter.vi" Type="VI" URL="../Sub VIs for FPGA/Median filter.vi">
						<Property Name="configString.guid" Type="Str">{06B3F24A-6FA8-48FC-85E1-B75157BFEBBA}resource=/MXP/AI0;0;ReadMethodType=U16{08DDED8C-C667-401D-846C-96B20B7AF820}resource=/AccelerationX;0;ReadMethodType=I16{099CB7CC-A6E6-4AE5-A8AE-02936CE5F2BB}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev0;0;ReadMethodType=bool;WriteMethodType=bool{0D35A014-1D78-4E5B-982E-4722637629DE}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO10;0;ReadMethodType=bool;WriteMethodType=bool{0F9EEDA4-096B-4086-A23B-4F162A34F6BD}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO12;0;ReadMethodType=bool;WriteMethodType=bool{127836BF-FA7D-4FA6-A568-09894E1C88C1}resource=/AccelerationZ;0;ReadMethodType=I16{1A9FA34B-F010-477C-B41C-F3AD842A9A00}resource=/AnalogIn3;0;ReadMethodType=U16{1AD26CE9-A067-400C-9331-E9151A07E96B}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO4;0;ReadMethodType=bool;WriteMethodType=bool{1C262ECF-F3A0-4543-8DF9-DF4CC8BCD5EC}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO3;0;ReadMethodType=bool;WriteMethodType=bool{1FD478CF-3727-42DB-B4FC-387533EE48EE}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd0;0;ReadMethodType=bool;WriteMethodType=bool{226B8611-5EF9-4DAC-8E96-E6EE62563467}resource=/AnalogIn0;0;ReadMethodType=U16{2429CE37-4D27-4380-9775-E5C751E233EB}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev3;0;ReadMethodType=bool;WriteMethodType=bool{26FD37FF-4EAA-45C3-8DC3-B45A7DECF84C}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS0;0;ReadMethodType=bool;WriteMethodType=bool{2A878FF9-08BF-4BED-9A2B-93D6C8278EAA}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Mode LED Red;0;ReadMethodType=bool;WriteMethodType=bool{3024DAC8-C660-4F4F-984F-CC67B06B5FF9}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RSL;0;ReadMethodType=bool;WriteMethodType=bool{35A85E25-5248-49A2-9FCB-8D0C2288F02C}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO6;0;ReadMethodType=bool;WriteMethodType=bool{38C9F367-2562-4702-93EA-6DFDF26B73C7}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO9;0;ReadMethodType=bool;WriteMethodType=bool{3A64A103-2CA3-4E7B-9431-D94F8FEC9E48}resource=/AccelerationY;0;ReadMethodType=I16{40285E89-4BBB-4864-B9C0-3412186A21C1}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd3;0;ReadMethodType=bool;WriteMethodType=bool{42266E28-1E03-4562-AF12-FE9A00162EF0}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM0;0;ReadMethodType=bool;WriteMethodType=bool{423297AA-1227-42D2-8FA6-3EBF65E59DAD}resource=/MXP/AI3;0;ReadMethodType=U16{424EAB1B-D4B8-4F86-996A-FAE0642E1C97}resource=/AnalogIn2;0;ReadMethodType=U16{4FE67C9A-9802-43ED-9945-218400825E07}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM8;0;ReadMethodType=bool;WriteMethodType=bool{505A65DA-7D69-4F9B-BD51-B02E62EFE4DB}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Radio LED Red;0;ReadMethodType=bool;WriteMethodType=bool{50934D24-8842-44A4-AF8B-CC404EEF8CC2}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO1;0;ReadMethodType=bool;WriteMethodType=bool{5243B07E-3797-4BC5-A785-95F1ADCA303F}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO4;0;ReadMethodType=bool;WriteMethodType=bool{52E58108-DA80-4EE9-AA76-584AC9F1FA5B}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO3;0;ReadMethodType=bool;WriteMethodType=bool{598CBDE3-A4ED-49F0-BDCA-347B696E37CC}resource=/MXP/AO0;0;WriteMethodType=U16{5ADEC30D-F452-4AD4-9BDA-669DD2B67725}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev1;0;ReadMethodType=bool;WriteMethodType=bool{661214A1-9FE7-4608-8D37-DF5C3DA4E0FB}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO8;0;ReadMethodType=bool;WriteMethodType=bool{66BD0067-4775-4109-8B33-A226469B06A0}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/I2C SDA;0;ReadMethodType=bool;WriteMethodType=bool{671B80DC-B818-4E5F-8127-C7988476B281}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS1;0;ReadMethodType=bool;WriteMethodType=bool{6BE03960-5D09-4F90-824B-BFE78DB60FF7}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CLK;0;ReadMethodType=bool;WriteMethodType=bool{6C7A922F-EEEB-4284-9FE8-0873933D8B33}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO14;0;ReadMethodType=bool;WriteMethodType=bool{70A119CA-D592-4134-AC93-16E483BB1C4F}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS2;0;ReadMethodType=bool;WriteMethodType=bool{734235B6-EAEB-455B-83D7-61F9CAE2B4AC}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd2;0;ReadMethodType=bool;WriteMethodType=bool{75C8F67F-8C26-431B-B86C-35694CD42CC1}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI MISO;0;ReadMethodType=bool;WriteMethodType=bool{80ACD959-D721-4879-B11E-582127F1CAC4}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM6;0;ReadMethodType=bool;WriteMethodType=bool{848DD97C-8C34-493E-A826-5F6560C0B833}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO0;0;ReadMethodType=bool;WriteMethodType=bool{85EC9EA8-0209-4FC4-BCFB-AC03D20AE1D1}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM7;0;ReadMethodType=bool;WriteMethodType=bool{8A466FD8-14B9-437F-8E4E-7FA79FA579F3}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO7;0;ReadMethodType=bool;WriteMethodType=bool{8C8AA6A5-8224-46F6-A17D-E7D592F27654}resource=/System Reset;0;ReadMethodType=bool;WriteMethodType=bool{98C2140B-6F33-40AA-A5F3-029767CA2B7E}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Mode LED Green;0;ReadMethodType=bool;WriteMethodType=bool{99029B90-24F7-4492-8D74-1622CC87F002}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM1;0;ReadMethodType=bool;WriteMethodType=bool{9D10B450-E368-4BA7-A2BC-3C9DFDC7312A}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO5;0;ReadMethodType=bool;WriteMethodType=bool{9E7F4086-37C0-4C92-BB56-C4ED769E5CA1}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO13;0;ReadMethodType=bool;WriteMethodType=bool{9FA2B2B4-2F13-4E1A-B602-E19BF2CFCDC1}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO8;0;ReadMethodType=bool;WriteMethodType=bool{A0E2C02B-6A1C-4BEF-90A2-790826CE1250}resource=/MXP/AO1;0;WriteMethodType=U16{A44ED442-E0AD-4F58-A7D6-EF96A935C2E2}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO7:0;0;ReadMethodType=u8;WriteMethodType=u8{A6ECD00E-81A8-4831-ACB3-10F3DB2CC3B6}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI MOSI;0;ReadMethodType=bool;WriteMethodType=bool{A8569FF9-8900-40B5-A35E-CD07EA36E8D2}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO9;0;ReadMethodType=bool;WriteMethodType=bool{A8CAE1AB-0B72-4DEC-8433-7E33CD2F4B73}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Comm LED Green;0;ReadMethodType=bool;WriteMethodType=bool{A8F9E728-EE86-4FBF-A622-EB9A26A86D1C}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Comm LED Red;0;ReadMethodType=bool;WriteMethodType=bool{B240366A-02B5-428C-824B-E35276773A81}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO11;0;ReadMethodType=bool;WriteMethodType=bool{B271F597-4071-44B1-BD58-BE9D078D957E}resource=/MXP/AI2;0;ReadMethodType=U16{BC3C1439-8672-4CBB-B136-3297185D6D30}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO5;0;ReadMethodType=bool;WriteMethodType=bool{BC963F8E-96E1-409F-BE55-DD80757E29FC}ResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000.000000;MaxFreq=40000000.000000;VariableFreq=0;NomFreq=40000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;{BE86254C-58E8-48BA-BF73-594E2E2F59A8}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO0;0;ReadMethodType=bool;WriteMethodType=bool{BF9374BD-328E-4F6A-B364-39B8B39CCFE8}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO2;0;ReadMethodType=bool;WriteMethodType=bool{C2F60ADE-329E-42D1-848A-53CFC82947EC}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO6;0;ReadMethodType=bool;WriteMethodType=bool{C43CF101-E9BD-492A-80AD-00B23A1FA393}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Radio LED Green;0;ReadMethodType=bool;WriteMethodType=bool{C6A88FD2-064C-4278-AD78-6DA8603662D5}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM3;0;ReadMethodType=bool;WriteMethodType=bool{C8DEABDA-8B81-4204-8FCF-579B00FE2DA3}resource=/AnalogIn1;0;ReadMethodType=U16{CC8391C5-49F8-46B5-9E3A-76F48BCD105D}resource=/MXP/AI1;0;ReadMethodType=U16{CCE60EB5-D3FD-4FE1-B566-8F8166B8DCAA}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM2;0;ReadMethodType=bool;WriteMethodType=bool{D566176E-D5A7-408F-ABF6-E4C5BF2232EE}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO1;0;ReadMethodType=bool;WriteMethodType=bool{DC33EB86-7244-4896-A82B-FBCFA70680D4}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO7;0;ReadMethodType=bool;WriteMethodType=bool{DE6AC190-6EC3-4BC2-AFEE-66AD03BBC0E3}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev2;0;ReadMethodType=bool;WriteMethodType=bool{E285CAA0-4E06-4BDD-BF4A-91E09D69DD72}NumberOfSyncRegistersForReadInProject=Auto;resource=/User Button;0;ReadMethodType=bool{E3D7EBE9-A060-4269-A99E-DC9F4BA6C6D3}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM9;0;ReadMethodType=bool;WriteMethodType=bool{E7B24FC7-AF1C-4EA3-BEF7-85359D292AC5}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO2;0;ReadMethodType=bool;WriteMethodType=bool{EB341279-8987-4228-9730-FB06EF5F95E4}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd1;0;ReadMethodType=bool;WriteMethodType=bool{ED9BD174-ED33-4F2E-A24C-E6D200C5E144}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM4;0;ReadMethodType=bool;WriteMethodType=bool{F6036ED0-66D5-4FA8-A6B6-F612DA0C941B}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO15;0;ReadMethodType=bool;WriteMethodType=bool{F6045A6B-E35B-47C8-93C0-36C49FC65D51}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS3;0;ReadMethodType=bool;WriteMethodType=bool{F75A7A1B-8511-4F7D-A4E1-319EED226DC2}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM5;0;ReadMethodType=bool;WriteMethodType=bool{F819B1CC-56D7-4D06-A152-050815D21C85}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/I2C SCL;0;ReadMethodType=bool;WriteMethodType=bool{FA3F7476-7909-46A0-AC81-FF959D35B452}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO15:8;0;ReadMethodType=u8;WriteMethodType=u8roboRIO/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSROBORIOFPGA_TARGET_FAMILYZYNQTARGET_TYPEFPGA</Property>
						<Property Name="configString.name" Type="Str">40 MHz Onboard ClockResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000.000000;MaxFreq=40000000.000000;VariableFreq=0;NomFreq=40000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;AccelerationXresource=/AccelerationX;0;ReadMethodType=I16AccelerationYresource=/AccelerationY;0;ReadMethodType=I16AccelerationZresource=/AccelerationZ;0;ReadMethodType=I16AnalogIn0resource=/AnalogIn0;0;ReadMethodType=U16AnalogIn1resource=/AnalogIn1;0;ReadMethodType=U16AnalogIn2resource=/AnalogIn2;0;ReadMethodType=U16AnalogIn3resource=/AnalogIn3;0;ReadMethodType=U16Comm LED GreenArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Comm LED Green;0;ReadMethodType=bool;WriteMethodType=boolComm LED RedArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Comm LED Red;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO0;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO1ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO1;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO2ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO2;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO3ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO3;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO4ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO4;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO5ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO5;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO6ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO6;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO7ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO7;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO8ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO8;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO9ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO9;0;ReadMethodType=bool;WriteMethodType=boolI2C SCLArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/I2C SCL;0;ReadMethodType=bool;WriteMethodType=boolI2C SDAArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/I2C SDA;0;ReadMethodType=bool;WriteMethodType=boolMode LED GreenArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Mode LED Green;0;ReadMethodType=bool;WriteMethodType=boolMode LED RedArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Mode LED Red;0;ReadMethodType=bool;WriteMethodType=boolMXP/AI0resource=/MXP/AI0;0;ReadMethodType=U16MXP/AI1resource=/MXP/AI1;0;ReadMethodType=U16MXP/AI2resource=/MXP/AI2;0;ReadMethodType=U16MXP/AI3resource=/MXP/AI3;0;ReadMethodType=U16MXP/AO0resource=/MXP/AO0;0;WriteMethodType=U16MXP/AO1resource=/MXP/AO1;0;WriteMethodType=U16MXP/DIO0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO0;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO10ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO10;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO11ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO11;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO12ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO12;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO13ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO13;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO14ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO14;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO15:8ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO15:8;0;ReadMethodType=u8;WriteMethodType=u8MXP/DIO15ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO15;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO1ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO1;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO2ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO2;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO3ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO3;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO4ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO4;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO5ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO5;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO6ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO6;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO7:0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO7:0;0;ReadMethodType=u8;WriteMethodType=u8MXP/DIO7ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO7;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO8ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO8;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO9ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO9;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM0ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM0;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM1ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM1;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM2ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM2;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM3ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM3;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM4ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM4;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM5ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM5;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM6ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM6;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM7ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM7;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM8ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM8;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM9ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM9;0;ReadMethodType=bool;WriteMethodType=boolRadio LED GreenArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Radio LED Green;0;ReadMethodType=bool;WriteMethodType=boolRadio LED RedArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Radio LED Red;0;ReadMethodType=bool;WriteMethodType=boolRelayFwd0ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd0;0;ReadMethodType=bool;WriteMethodType=boolRelayFwd1ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd1;0;ReadMethodType=bool;WriteMethodType=boolRelayFwd2ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd2;0;ReadMethodType=bool;WriteMethodType=boolRelayFwd3ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd3;0;ReadMethodType=bool;WriteMethodType=boolRelayRev0ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev0;0;ReadMethodType=bool;WriteMethodType=boolRelayRev1ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev1;0;ReadMethodType=bool;WriteMethodType=boolRelayRev2ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev2;0;ReadMethodType=bool;WriteMethodType=boolRelayRev3ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev3;0;ReadMethodType=bool;WriteMethodType=boolroboRIO/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSROBORIOFPGA_TARGET_FAMILYZYNQTARGET_TYPEFPGARSLArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RSL;0;ReadMethodType=bool;WriteMethodType=boolSPI CLKArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CLK;0;ReadMethodType=bool;WriteMethodType=boolSPI CS0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS0;0;ReadMethodType=bool;WriteMethodType=boolSPI CS1ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS1;0;ReadMethodType=bool;WriteMethodType=boolSPI CS2ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS2;0;ReadMethodType=bool;WriteMethodType=boolSPI CS3ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS3;0;ReadMethodType=bool;WriteMethodType=boolSPI MISOArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI MISO;0;ReadMethodType=bool;WriteMethodType=boolSPI MOSIArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI MOSI;0;ReadMethodType=bool;WriteMethodType=boolSystem Resetresource=/System Reset;0;ReadMethodType=bool;WriteMethodType=boolUser ButtonNumberOfSyncRegistersForReadInProject=Auto;resource=/User Button;0;ReadMethodType=bool</Property>
					</Item>
					<Item Name="Moving average filter.vi" Type="VI" URL="../Sub VIs for FPGA/Moving average filter.vi">
						<Property Name="configString.guid" Type="Str">{06B3F24A-6FA8-48FC-85E1-B75157BFEBBA}resource=/MXP/AI0;0;ReadMethodType=U16{08DDED8C-C667-401D-846C-96B20B7AF820}resource=/AccelerationX;0;ReadMethodType=I16{099CB7CC-A6E6-4AE5-A8AE-02936CE5F2BB}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev0;0;ReadMethodType=bool;WriteMethodType=bool{0D35A014-1D78-4E5B-982E-4722637629DE}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO10;0;ReadMethodType=bool;WriteMethodType=bool{0F9EEDA4-096B-4086-A23B-4F162A34F6BD}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO12;0;ReadMethodType=bool;WriteMethodType=bool{127836BF-FA7D-4FA6-A568-09894E1C88C1}resource=/AccelerationZ;0;ReadMethodType=I16{1A9FA34B-F010-477C-B41C-F3AD842A9A00}resource=/AnalogIn3;0;ReadMethodType=U16{1AD26CE9-A067-400C-9331-E9151A07E96B}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO4;0;ReadMethodType=bool;WriteMethodType=bool{1C262ECF-F3A0-4543-8DF9-DF4CC8BCD5EC}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO3;0;ReadMethodType=bool;WriteMethodType=bool{1FD478CF-3727-42DB-B4FC-387533EE48EE}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd0;0;ReadMethodType=bool;WriteMethodType=bool{226B8611-5EF9-4DAC-8E96-E6EE62563467}resource=/AnalogIn0;0;ReadMethodType=U16{2429CE37-4D27-4380-9775-E5C751E233EB}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev3;0;ReadMethodType=bool;WriteMethodType=bool{26FD37FF-4EAA-45C3-8DC3-B45A7DECF84C}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS0;0;ReadMethodType=bool;WriteMethodType=bool{2A878FF9-08BF-4BED-9A2B-93D6C8278EAA}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Mode LED Red;0;ReadMethodType=bool;WriteMethodType=bool{3024DAC8-C660-4F4F-984F-CC67B06B5FF9}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RSL;0;ReadMethodType=bool;WriteMethodType=bool{35A85E25-5248-49A2-9FCB-8D0C2288F02C}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO6;0;ReadMethodType=bool;WriteMethodType=bool{38C9F367-2562-4702-93EA-6DFDF26B73C7}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO9;0;ReadMethodType=bool;WriteMethodType=bool{3A64A103-2CA3-4E7B-9431-D94F8FEC9E48}resource=/AccelerationY;0;ReadMethodType=I16{40285E89-4BBB-4864-B9C0-3412186A21C1}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd3;0;ReadMethodType=bool;WriteMethodType=bool{42266E28-1E03-4562-AF12-FE9A00162EF0}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM0;0;ReadMethodType=bool;WriteMethodType=bool{423297AA-1227-42D2-8FA6-3EBF65E59DAD}resource=/MXP/AI3;0;ReadMethodType=U16{424EAB1B-D4B8-4F86-996A-FAE0642E1C97}resource=/AnalogIn2;0;ReadMethodType=U16{4FE67C9A-9802-43ED-9945-218400825E07}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM8;0;ReadMethodType=bool;WriteMethodType=bool{505A65DA-7D69-4F9B-BD51-B02E62EFE4DB}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Radio LED Red;0;ReadMethodType=bool;WriteMethodType=bool{50934D24-8842-44A4-AF8B-CC404EEF8CC2}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO1;0;ReadMethodType=bool;WriteMethodType=bool{5243B07E-3797-4BC5-A785-95F1ADCA303F}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO4;0;ReadMethodType=bool;WriteMethodType=bool{52E58108-DA80-4EE9-AA76-584AC9F1FA5B}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO3;0;ReadMethodType=bool;WriteMethodType=bool{598CBDE3-A4ED-49F0-BDCA-347B696E37CC}resource=/MXP/AO0;0;WriteMethodType=U16{5ADEC30D-F452-4AD4-9BDA-669DD2B67725}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev1;0;ReadMethodType=bool;WriteMethodType=bool{661214A1-9FE7-4608-8D37-DF5C3DA4E0FB}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO8;0;ReadMethodType=bool;WriteMethodType=bool{66BD0067-4775-4109-8B33-A226469B06A0}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/I2C SDA;0;ReadMethodType=bool;WriteMethodType=bool{671B80DC-B818-4E5F-8127-C7988476B281}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS1;0;ReadMethodType=bool;WriteMethodType=bool{6BE03960-5D09-4F90-824B-BFE78DB60FF7}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CLK;0;ReadMethodType=bool;WriteMethodType=bool{6C7A922F-EEEB-4284-9FE8-0873933D8B33}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO14;0;ReadMethodType=bool;WriteMethodType=bool{70A119CA-D592-4134-AC93-16E483BB1C4F}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS2;0;ReadMethodType=bool;WriteMethodType=bool{734235B6-EAEB-455B-83D7-61F9CAE2B4AC}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd2;0;ReadMethodType=bool;WriteMethodType=bool{75C8F67F-8C26-431B-B86C-35694CD42CC1}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI MISO;0;ReadMethodType=bool;WriteMethodType=bool{80ACD959-D721-4879-B11E-582127F1CAC4}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM6;0;ReadMethodType=bool;WriteMethodType=bool{848DD97C-8C34-493E-A826-5F6560C0B833}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO0;0;ReadMethodType=bool;WriteMethodType=bool{85EC9EA8-0209-4FC4-BCFB-AC03D20AE1D1}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM7;0;ReadMethodType=bool;WriteMethodType=bool{8A466FD8-14B9-437F-8E4E-7FA79FA579F3}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO7;0;ReadMethodType=bool;WriteMethodType=bool{8C8AA6A5-8224-46F6-A17D-E7D592F27654}resource=/System Reset;0;ReadMethodType=bool;WriteMethodType=bool{98C2140B-6F33-40AA-A5F3-029767CA2B7E}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Mode LED Green;0;ReadMethodType=bool;WriteMethodType=bool{99029B90-24F7-4492-8D74-1622CC87F002}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM1;0;ReadMethodType=bool;WriteMethodType=bool{9D10B450-E368-4BA7-A2BC-3C9DFDC7312A}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO5;0;ReadMethodType=bool;WriteMethodType=bool{9E7F4086-37C0-4C92-BB56-C4ED769E5CA1}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO13;0;ReadMethodType=bool;WriteMethodType=bool{9FA2B2B4-2F13-4E1A-B602-E19BF2CFCDC1}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO8;0;ReadMethodType=bool;WriteMethodType=bool{A0E2C02B-6A1C-4BEF-90A2-790826CE1250}resource=/MXP/AO1;0;WriteMethodType=U16{A44ED442-E0AD-4F58-A7D6-EF96A935C2E2}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO7:0;0;ReadMethodType=u8;WriteMethodType=u8{A6ECD00E-81A8-4831-ACB3-10F3DB2CC3B6}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI MOSI;0;ReadMethodType=bool;WriteMethodType=bool{A8569FF9-8900-40B5-A35E-CD07EA36E8D2}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO9;0;ReadMethodType=bool;WriteMethodType=bool{A8CAE1AB-0B72-4DEC-8433-7E33CD2F4B73}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Comm LED Green;0;ReadMethodType=bool;WriteMethodType=bool{A8F9E728-EE86-4FBF-A622-EB9A26A86D1C}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Comm LED Red;0;ReadMethodType=bool;WriteMethodType=bool{B240366A-02B5-428C-824B-E35276773A81}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO11;0;ReadMethodType=bool;WriteMethodType=bool{B271F597-4071-44B1-BD58-BE9D078D957E}resource=/MXP/AI2;0;ReadMethodType=U16{BC3C1439-8672-4CBB-B136-3297185D6D30}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO5;0;ReadMethodType=bool;WriteMethodType=bool{BC963F8E-96E1-409F-BE55-DD80757E29FC}ResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000.000000;MaxFreq=40000000.000000;VariableFreq=0;NomFreq=40000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;{BE86254C-58E8-48BA-BF73-594E2E2F59A8}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO0;0;ReadMethodType=bool;WriteMethodType=bool{BF9374BD-328E-4F6A-B364-39B8B39CCFE8}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO2;0;ReadMethodType=bool;WriteMethodType=bool{C2F60ADE-329E-42D1-848A-53CFC82947EC}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO6;0;ReadMethodType=bool;WriteMethodType=bool{C43CF101-E9BD-492A-80AD-00B23A1FA393}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Radio LED Green;0;ReadMethodType=bool;WriteMethodType=bool{C6A88FD2-064C-4278-AD78-6DA8603662D5}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM3;0;ReadMethodType=bool;WriteMethodType=bool{C8DEABDA-8B81-4204-8FCF-579B00FE2DA3}resource=/AnalogIn1;0;ReadMethodType=U16{CC8391C5-49F8-46B5-9E3A-76F48BCD105D}resource=/MXP/AI1;0;ReadMethodType=U16{CCE60EB5-D3FD-4FE1-B566-8F8166B8DCAA}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM2;0;ReadMethodType=bool;WriteMethodType=bool{D566176E-D5A7-408F-ABF6-E4C5BF2232EE}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO1;0;ReadMethodType=bool;WriteMethodType=bool{DC33EB86-7244-4896-A82B-FBCFA70680D4}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO7;0;ReadMethodType=bool;WriteMethodType=bool{DE6AC190-6EC3-4BC2-AFEE-66AD03BBC0E3}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev2;0;ReadMethodType=bool;WriteMethodType=bool{E285CAA0-4E06-4BDD-BF4A-91E09D69DD72}NumberOfSyncRegistersForReadInProject=Auto;resource=/User Button;0;ReadMethodType=bool{E3D7EBE9-A060-4269-A99E-DC9F4BA6C6D3}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM9;0;ReadMethodType=bool;WriteMethodType=bool{E7B24FC7-AF1C-4EA3-BEF7-85359D292AC5}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO2;0;ReadMethodType=bool;WriteMethodType=bool{EB341279-8987-4228-9730-FB06EF5F95E4}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd1;0;ReadMethodType=bool;WriteMethodType=bool{ED9BD174-ED33-4F2E-A24C-E6D200C5E144}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM4;0;ReadMethodType=bool;WriteMethodType=bool{F6036ED0-66D5-4FA8-A6B6-F612DA0C941B}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO15;0;ReadMethodType=bool;WriteMethodType=bool{F6045A6B-E35B-47C8-93C0-36C49FC65D51}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS3;0;ReadMethodType=bool;WriteMethodType=bool{F75A7A1B-8511-4F7D-A4E1-319EED226DC2}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM5;0;ReadMethodType=bool;WriteMethodType=bool{F819B1CC-56D7-4D06-A152-050815D21C85}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/I2C SCL;0;ReadMethodType=bool;WriteMethodType=bool{FA3F7476-7909-46A0-AC81-FF959D35B452}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO15:8;0;ReadMethodType=u8;WriteMethodType=u8roboRIO/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSROBORIOFPGA_TARGET_FAMILYZYNQTARGET_TYPEFPGA</Property>
						<Property Name="configString.name" Type="Str">40 MHz Onboard ClockResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000.000000;MaxFreq=40000000.000000;VariableFreq=0;NomFreq=40000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;AccelerationXresource=/AccelerationX;0;ReadMethodType=I16AccelerationYresource=/AccelerationY;0;ReadMethodType=I16AccelerationZresource=/AccelerationZ;0;ReadMethodType=I16AnalogIn0resource=/AnalogIn0;0;ReadMethodType=U16AnalogIn1resource=/AnalogIn1;0;ReadMethodType=U16AnalogIn2resource=/AnalogIn2;0;ReadMethodType=U16AnalogIn3resource=/AnalogIn3;0;ReadMethodType=U16Comm LED GreenArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Comm LED Green;0;ReadMethodType=bool;WriteMethodType=boolComm LED RedArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Comm LED Red;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO0;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO1ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO1;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO2ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO2;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO3ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO3;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO4ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO4;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO5ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO5;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO6ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO6;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO7ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO7;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO8ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO8;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO9ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO9;0;ReadMethodType=bool;WriteMethodType=boolI2C SCLArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/I2C SCL;0;ReadMethodType=bool;WriteMethodType=boolI2C SDAArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/I2C SDA;0;ReadMethodType=bool;WriteMethodType=boolMode LED GreenArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Mode LED Green;0;ReadMethodType=bool;WriteMethodType=boolMode LED RedArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Mode LED Red;0;ReadMethodType=bool;WriteMethodType=boolMXP/AI0resource=/MXP/AI0;0;ReadMethodType=U16MXP/AI1resource=/MXP/AI1;0;ReadMethodType=U16MXP/AI2resource=/MXP/AI2;0;ReadMethodType=U16MXP/AI3resource=/MXP/AI3;0;ReadMethodType=U16MXP/AO0resource=/MXP/AO0;0;WriteMethodType=U16MXP/AO1resource=/MXP/AO1;0;WriteMethodType=U16MXP/DIO0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO0;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO10ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO10;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO11ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO11;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO12ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO12;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO13ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO13;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO14ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO14;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO15:8ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO15:8;0;ReadMethodType=u8;WriteMethodType=u8MXP/DIO15ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO15;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO1ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO1;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO2ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO2;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO3ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO3;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO4ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO4;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO5ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO5;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO6ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO6;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO7:0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO7:0;0;ReadMethodType=u8;WriteMethodType=u8MXP/DIO7ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO7;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO8ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO8;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO9ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO9;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM0ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM0;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM1ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM1;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM2ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM2;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM3ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM3;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM4ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM4;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM5ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM5;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM6ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM6;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM7ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM7;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM8ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM8;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM9ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM9;0;ReadMethodType=bool;WriteMethodType=boolRadio LED GreenArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Radio LED Green;0;ReadMethodType=bool;WriteMethodType=boolRadio LED RedArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Radio LED Red;0;ReadMethodType=bool;WriteMethodType=boolRelayFwd0ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd0;0;ReadMethodType=bool;WriteMethodType=boolRelayFwd1ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd1;0;ReadMethodType=bool;WriteMethodType=boolRelayFwd2ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd2;0;ReadMethodType=bool;WriteMethodType=boolRelayFwd3ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd3;0;ReadMethodType=bool;WriteMethodType=boolRelayRev0ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev0;0;ReadMethodType=bool;WriteMethodType=boolRelayRev1ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev1;0;ReadMethodType=bool;WriteMethodType=boolRelayRev2ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev2;0;ReadMethodType=bool;WriteMethodType=boolRelayRev3ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev3;0;ReadMethodType=bool;WriteMethodType=boolroboRIO/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSROBORIOFPGA_TARGET_FAMILYZYNQTARGET_TYPEFPGARSLArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RSL;0;ReadMethodType=bool;WriteMethodType=boolSPI CLKArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CLK;0;ReadMethodType=bool;WriteMethodType=boolSPI CS0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS0;0;ReadMethodType=bool;WriteMethodType=boolSPI CS1ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS1;0;ReadMethodType=bool;WriteMethodType=boolSPI CS2ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS2;0;ReadMethodType=bool;WriteMethodType=boolSPI CS3ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS3;0;ReadMethodType=bool;WriteMethodType=boolSPI MISOArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI MISO;0;ReadMethodType=bool;WriteMethodType=boolSPI MOSIArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI MOSI;0;ReadMethodType=bool;WriteMethodType=boolSystem Resetresource=/System Reset;0;ReadMethodType=bool;WriteMethodType=boolUser ButtonNumberOfSyncRegistersForReadInProject=Auto;resource=/User Button;0;ReadMethodType=bool</Property>
					</Item>
					<Item Name="RC steering motor interpolation.vi" Type="VI" URL="../Sub VIs for FPGA/RC steering motor interpolation.vi">
						<Property Name="configString.guid" Type="Str">{06B3F24A-6FA8-48FC-85E1-B75157BFEBBA}resource=/MXP/AI0;0;ReadMethodType=U16{08DDED8C-C667-401D-846C-96B20B7AF820}resource=/AccelerationX;0;ReadMethodType=I16{099CB7CC-A6E6-4AE5-A8AE-02936CE5F2BB}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev0;0;ReadMethodType=bool;WriteMethodType=bool{0D35A014-1D78-4E5B-982E-4722637629DE}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO10;0;ReadMethodType=bool;WriteMethodType=bool{0F9EEDA4-096B-4086-A23B-4F162A34F6BD}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO12;0;ReadMethodType=bool;WriteMethodType=bool{127836BF-FA7D-4FA6-A568-09894E1C88C1}resource=/AccelerationZ;0;ReadMethodType=I16{1A9FA34B-F010-477C-B41C-F3AD842A9A00}resource=/AnalogIn3;0;ReadMethodType=U16{1AD26CE9-A067-400C-9331-E9151A07E96B}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO4;0;ReadMethodType=bool;WriteMethodType=bool{1C262ECF-F3A0-4543-8DF9-DF4CC8BCD5EC}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO3;0;ReadMethodType=bool;WriteMethodType=bool{1FD478CF-3727-42DB-B4FC-387533EE48EE}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd0;0;ReadMethodType=bool;WriteMethodType=bool{226B8611-5EF9-4DAC-8E96-E6EE62563467}resource=/AnalogIn0;0;ReadMethodType=U16{2429CE37-4D27-4380-9775-E5C751E233EB}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev3;0;ReadMethodType=bool;WriteMethodType=bool{26FD37FF-4EAA-45C3-8DC3-B45A7DECF84C}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS0;0;ReadMethodType=bool;WriteMethodType=bool{2A878FF9-08BF-4BED-9A2B-93D6C8278EAA}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Mode LED Red;0;ReadMethodType=bool;WriteMethodType=bool{3024DAC8-C660-4F4F-984F-CC67B06B5FF9}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RSL;0;ReadMethodType=bool;WriteMethodType=bool{35A85E25-5248-49A2-9FCB-8D0C2288F02C}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO6;0;ReadMethodType=bool;WriteMethodType=bool{38C9F367-2562-4702-93EA-6DFDF26B73C7}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO9;0;ReadMethodType=bool;WriteMethodType=bool{3A64A103-2CA3-4E7B-9431-D94F8FEC9E48}resource=/AccelerationY;0;ReadMethodType=I16{40285E89-4BBB-4864-B9C0-3412186A21C1}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd3;0;ReadMethodType=bool;WriteMethodType=bool{42266E28-1E03-4562-AF12-FE9A00162EF0}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM0;0;ReadMethodType=bool;WriteMethodType=bool{423297AA-1227-42D2-8FA6-3EBF65E59DAD}resource=/MXP/AI3;0;ReadMethodType=U16{424EAB1B-D4B8-4F86-996A-FAE0642E1C97}resource=/AnalogIn2;0;ReadMethodType=U16{4FE67C9A-9802-43ED-9945-218400825E07}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM8;0;ReadMethodType=bool;WriteMethodType=bool{505A65DA-7D69-4F9B-BD51-B02E62EFE4DB}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Radio LED Red;0;ReadMethodType=bool;WriteMethodType=bool{50934D24-8842-44A4-AF8B-CC404EEF8CC2}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO1;0;ReadMethodType=bool;WriteMethodType=bool{5243B07E-3797-4BC5-A785-95F1ADCA303F}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO4;0;ReadMethodType=bool;WriteMethodType=bool{52E58108-DA80-4EE9-AA76-584AC9F1FA5B}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO3;0;ReadMethodType=bool;WriteMethodType=bool{598CBDE3-A4ED-49F0-BDCA-347B696E37CC}resource=/MXP/AO0;0;WriteMethodType=U16{5ADEC30D-F452-4AD4-9BDA-669DD2B67725}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev1;0;ReadMethodType=bool;WriteMethodType=bool{661214A1-9FE7-4608-8D37-DF5C3DA4E0FB}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO8;0;ReadMethodType=bool;WriteMethodType=bool{66BD0067-4775-4109-8B33-A226469B06A0}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/I2C SDA;0;ReadMethodType=bool;WriteMethodType=bool{671B80DC-B818-4E5F-8127-C7988476B281}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS1;0;ReadMethodType=bool;WriteMethodType=bool{6BE03960-5D09-4F90-824B-BFE78DB60FF7}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CLK;0;ReadMethodType=bool;WriteMethodType=bool{6C7A922F-EEEB-4284-9FE8-0873933D8B33}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO14;0;ReadMethodType=bool;WriteMethodType=bool{70A119CA-D592-4134-AC93-16E483BB1C4F}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS2;0;ReadMethodType=bool;WriteMethodType=bool{734235B6-EAEB-455B-83D7-61F9CAE2B4AC}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd2;0;ReadMethodType=bool;WriteMethodType=bool{75C8F67F-8C26-431B-B86C-35694CD42CC1}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI MISO;0;ReadMethodType=bool;WriteMethodType=bool{80ACD959-D721-4879-B11E-582127F1CAC4}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM6;0;ReadMethodType=bool;WriteMethodType=bool{848DD97C-8C34-493E-A826-5F6560C0B833}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO0;0;ReadMethodType=bool;WriteMethodType=bool{85EC9EA8-0209-4FC4-BCFB-AC03D20AE1D1}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM7;0;ReadMethodType=bool;WriteMethodType=bool{8A466FD8-14B9-437F-8E4E-7FA79FA579F3}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO7;0;ReadMethodType=bool;WriteMethodType=bool{8C8AA6A5-8224-46F6-A17D-E7D592F27654}resource=/System Reset;0;ReadMethodType=bool;WriteMethodType=bool{98C2140B-6F33-40AA-A5F3-029767CA2B7E}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Mode LED Green;0;ReadMethodType=bool;WriteMethodType=bool{99029B90-24F7-4492-8D74-1622CC87F002}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM1;0;ReadMethodType=bool;WriteMethodType=bool{9D10B450-E368-4BA7-A2BC-3C9DFDC7312A}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO5;0;ReadMethodType=bool;WriteMethodType=bool{9E7F4086-37C0-4C92-BB56-C4ED769E5CA1}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO13;0;ReadMethodType=bool;WriteMethodType=bool{9FA2B2B4-2F13-4E1A-B602-E19BF2CFCDC1}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO8;0;ReadMethodType=bool;WriteMethodType=bool{A0E2C02B-6A1C-4BEF-90A2-790826CE1250}resource=/MXP/AO1;0;WriteMethodType=U16{A44ED442-E0AD-4F58-A7D6-EF96A935C2E2}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO7:0;0;ReadMethodType=u8;WriteMethodType=u8{A6ECD00E-81A8-4831-ACB3-10F3DB2CC3B6}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI MOSI;0;ReadMethodType=bool;WriteMethodType=bool{A8569FF9-8900-40B5-A35E-CD07EA36E8D2}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO9;0;ReadMethodType=bool;WriteMethodType=bool{A8CAE1AB-0B72-4DEC-8433-7E33CD2F4B73}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Comm LED Green;0;ReadMethodType=bool;WriteMethodType=bool{A8F9E728-EE86-4FBF-A622-EB9A26A86D1C}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Comm LED Red;0;ReadMethodType=bool;WriteMethodType=bool{B240366A-02B5-428C-824B-E35276773A81}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO11;0;ReadMethodType=bool;WriteMethodType=bool{B271F597-4071-44B1-BD58-BE9D078D957E}resource=/MXP/AI2;0;ReadMethodType=U16{BC3C1439-8672-4CBB-B136-3297185D6D30}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO5;0;ReadMethodType=bool;WriteMethodType=bool{BC963F8E-96E1-409F-BE55-DD80757E29FC}ResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000.000000;MaxFreq=40000000.000000;VariableFreq=0;NomFreq=40000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;{BE86254C-58E8-48BA-BF73-594E2E2F59A8}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO0;0;ReadMethodType=bool;WriteMethodType=bool{BF9374BD-328E-4F6A-B364-39B8B39CCFE8}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO2;0;ReadMethodType=bool;WriteMethodType=bool{C2F60ADE-329E-42D1-848A-53CFC82947EC}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO6;0;ReadMethodType=bool;WriteMethodType=bool{C43CF101-E9BD-492A-80AD-00B23A1FA393}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Radio LED Green;0;ReadMethodType=bool;WriteMethodType=bool{C6A88FD2-064C-4278-AD78-6DA8603662D5}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM3;0;ReadMethodType=bool;WriteMethodType=bool{C8DEABDA-8B81-4204-8FCF-579B00FE2DA3}resource=/AnalogIn1;0;ReadMethodType=U16{CC8391C5-49F8-46B5-9E3A-76F48BCD105D}resource=/MXP/AI1;0;ReadMethodType=U16{CCE60EB5-D3FD-4FE1-B566-8F8166B8DCAA}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM2;0;ReadMethodType=bool;WriteMethodType=bool{D566176E-D5A7-408F-ABF6-E4C5BF2232EE}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO1;0;ReadMethodType=bool;WriteMethodType=bool{DC33EB86-7244-4896-A82B-FBCFA70680D4}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO7;0;ReadMethodType=bool;WriteMethodType=bool{DE6AC190-6EC3-4BC2-AFEE-66AD03BBC0E3}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev2;0;ReadMethodType=bool;WriteMethodType=bool{E285CAA0-4E06-4BDD-BF4A-91E09D69DD72}NumberOfSyncRegistersForReadInProject=Auto;resource=/User Button;0;ReadMethodType=bool{E3D7EBE9-A060-4269-A99E-DC9F4BA6C6D3}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM9;0;ReadMethodType=bool;WriteMethodType=bool{E7B24FC7-AF1C-4EA3-BEF7-85359D292AC5}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO2;0;ReadMethodType=bool;WriteMethodType=bool{EB341279-8987-4228-9730-FB06EF5F95E4}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd1;0;ReadMethodType=bool;WriteMethodType=bool{ED9BD174-ED33-4F2E-A24C-E6D200C5E144}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM4;0;ReadMethodType=bool;WriteMethodType=bool{F6036ED0-66D5-4FA8-A6B6-F612DA0C941B}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO15;0;ReadMethodType=bool;WriteMethodType=bool{F6045A6B-E35B-47C8-93C0-36C49FC65D51}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS3;0;ReadMethodType=bool;WriteMethodType=bool{F75A7A1B-8511-4F7D-A4E1-319EED226DC2}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM5;0;ReadMethodType=bool;WriteMethodType=bool{F819B1CC-56D7-4D06-A152-050815D21C85}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/I2C SCL;0;ReadMethodType=bool;WriteMethodType=bool{FA3F7476-7909-46A0-AC81-FF959D35B452}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO15:8;0;ReadMethodType=u8;WriteMethodType=u8roboRIO/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSROBORIOFPGA_TARGET_FAMILYZYNQTARGET_TYPEFPGA</Property>
						<Property Name="configString.name" Type="Str">40 MHz Onboard ClockResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000.000000;MaxFreq=40000000.000000;VariableFreq=0;NomFreq=40000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;AccelerationXresource=/AccelerationX;0;ReadMethodType=I16AccelerationYresource=/AccelerationY;0;ReadMethodType=I16AccelerationZresource=/AccelerationZ;0;ReadMethodType=I16AnalogIn0resource=/AnalogIn0;0;ReadMethodType=U16AnalogIn1resource=/AnalogIn1;0;ReadMethodType=U16AnalogIn2resource=/AnalogIn2;0;ReadMethodType=U16AnalogIn3resource=/AnalogIn3;0;ReadMethodType=U16Comm LED GreenArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Comm LED Green;0;ReadMethodType=bool;WriteMethodType=boolComm LED RedArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Comm LED Red;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO0;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO1ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO1;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO2ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO2;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO3ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO3;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO4ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO4;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO5ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO5;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO6ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO6;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO7ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO7;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO8ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO8;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO9ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO9;0;ReadMethodType=bool;WriteMethodType=boolI2C SCLArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/I2C SCL;0;ReadMethodType=bool;WriteMethodType=boolI2C SDAArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/I2C SDA;0;ReadMethodType=bool;WriteMethodType=boolMode LED GreenArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Mode LED Green;0;ReadMethodType=bool;WriteMethodType=boolMode LED RedArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Mode LED Red;0;ReadMethodType=bool;WriteMethodType=boolMXP/AI0resource=/MXP/AI0;0;ReadMethodType=U16MXP/AI1resource=/MXP/AI1;0;ReadMethodType=U16MXP/AI2resource=/MXP/AI2;0;ReadMethodType=U16MXP/AI3resource=/MXP/AI3;0;ReadMethodType=U16MXP/AO0resource=/MXP/AO0;0;WriteMethodType=U16MXP/AO1resource=/MXP/AO1;0;WriteMethodType=U16MXP/DIO0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO0;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO10ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO10;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO11ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO11;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO12ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO12;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO13ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO13;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO14ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO14;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO15:8ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO15:8;0;ReadMethodType=u8;WriteMethodType=u8MXP/DIO15ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO15;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO1ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO1;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO2ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO2;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO3ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO3;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO4ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO4;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO5ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO5;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO6ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO6;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO7:0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO7:0;0;ReadMethodType=u8;WriteMethodType=u8MXP/DIO7ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO7;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO8ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO8;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO9ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO9;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM0ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM0;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM1ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM1;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM2ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM2;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM3ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM3;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM4ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM4;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM5ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM5;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM6ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM6;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM7ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM7;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM8ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM8;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM9ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM9;0;ReadMethodType=bool;WriteMethodType=boolRadio LED GreenArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Radio LED Green;0;ReadMethodType=bool;WriteMethodType=boolRadio LED RedArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Radio LED Red;0;ReadMethodType=bool;WriteMethodType=boolRelayFwd0ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd0;0;ReadMethodType=bool;WriteMethodType=boolRelayFwd1ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd1;0;ReadMethodType=bool;WriteMethodType=boolRelayFwd2ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd2;0;ReadMethodType=bool;WriteMethodType=boolRelayFwd3ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd3;0;ReadMethodType=bool;WriteMethodType=boolRelayRev0ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev0;0;ReadMethodType=bool;WriteMethodType=boolRelayRev1ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev1;0;ReadMethodType=bool;WriteMethodType=boolRelayRev2ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev2;0;ReadMethodType=bool;WriteMethodType=boolRelayRev3ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev3;0;ReadMethodType=bool;WriteMethodType=boolroboRIO/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSROBORIOFPGA_TARGET_FAMILYZYNQTARGET_TYPEFPGARSLArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RSL;0;ReadMethodType=bool;WriteMethodType=boolSPI CLKArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CLK;0;ReadMethodType=bool;WriteMethodType=boolSPI CS0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS0;0;ReadMethodType=bool;WriteMethodType=boolSPI CS1ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS1;0;ReadMethodType=bool;WriteMethodType=boolSPI CS2ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS2;0;ReadMethodType=bool;WriteMethodType=boolSPI CS3ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS3;0;ReadMethodType=bool;WriteMethodType=boolSPI MISOArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI MISO;0;ReadMethodType=bool;WriteMethodType=boolSPI MOSIArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI MOSI;0;ReadMethodType=bool;WriteMethodType=boolSystem Resetresource=/System Reset;0;ReadMethodType=bool;WriteMethodType=boolUser ButtonNumberOfSyncRegistersForReadInProject=Auto;resource=/User Button;0;ReadMethodType=bool</Property>
					</Item>
					<Item Name="Receiver.vi" Type="VI" URL="../Sub VIs for FPGA/Receiver.vi">
						<Property Name="configString.guid" Type="Str">{06B3F24A-6FA8-48FC-85E1-B75157BFEBBA}resource=/MXP/AI0;0;ReadMethodType=U16{08DDED8C-C667-401D-846C-96B20B7AF820}resource=/AccelerationX;0;ReadMethodType=I16{099CB7CC-A6E6-4AE5-A8AE-02936CE5F2BB}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev0;0;ReadMethodType=bool;WriteMethodType=bool{0D35A014-1D78-4E5B-982E-4722637629DE}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO10;0;ReadMethodType=bool;WriteMethodType=bool{0F9EEDA4-096B-4086-A23B-4F162A34F6BD}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO12;0;ReadMethodType=bool;WriteMethodType=bool{127836BF-FA7D-4FA6-A568-09894E1C88C1}resource=/AccelerationZ;0;ReadMethodType=I16{1A9FA34B-F010-477C-B41C-F3AD842A9A00}resource=/AnalogIn3;0;ReadMethodType=U16{1AD26CE9-A067-400C-9331-E9151A07E96B}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO4;0;ReadMethodType=bool;WriteMethodType=bool{1C262ECF-F3A0-4543-8DF9-DF4CC8BCD5EC}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO3;0;ReadMethodType=bool;WriteMethodType=bool{1FD478CF-3727-42DB-B4FC-387533EE48EE}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd0;0;ReadMethodType=bool;WriteMethodType=bool{226B8611-5EF9-4DAC-8E96-E6EE62563467}resource=/AnalogIn0;0;ReadMethodType=U16{2429CE37-4D27-4380-9775-E5C751E233EB}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev3;0;ReadMethodType=bool;WriteMethodType=bool{26FD37FF-4EAA-45C3-8DC3-B45A7DECF84C}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS0;0;ReadMethodType=bool;WriteMethodType=bool{2A878FF9-08BF-4BED-9A2B-93D6C8278EAA}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Mode LED Red;0;ReadMethodType=bool;WriteMethodType=bool{3024DAC8-C660-4F4F-984F-CC67B06B5FF9}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RSL;0;ReadMethodType=bool;WriteMethodType=bool{35A85E25-5248-49A2-9FCB-8D0C2288F02C}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO6;0;ReadMethodType=bool;WriteMethodType=bool{38C9F367-2562-4702-93EA-6DFDF26B73C7}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO9;0;ReadMethodType=bool;WriteMethodType=bool{3A64A103-2CA3-4E7B-9431-D94F8FEC9E48}resource=/AccelerationY;0;ReadMethodType=I16{40285E89-4BBB-4864-B9C0-3412186A21C1}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd3;0;ReadMethodType=bool;WriteMethodType=bool{42266E28-1E03-4562-AF12-FE9A00162EF0}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM0;0;ReadMethodType=bool;WriteMethodType=bool{423297AA-1227-42D2-8FA6-3EBF65E59DAD}resource=/MXP/AI3;0;ReadMethodType=U16{424EAB1B-D4B8-4F86-996A-FAE0642E1C97}resource=/AnalogIn2;0;ReadMethodType=U16{4FE67C9A-9802-43ED-9945-218400825E07}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM8;0;ReadMethodType=bool;WriteMethodType=bool{505A65DA-7D69-4F9B-BD51-B02E62EFE4DB}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Radio LED Red;0;ReadMethodType=bool;WriteMethodType=bool{50934D24-8842-44A4-AF8B-CC404EEF8CC2}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO1;0;ReadMethodType=bool;WriteMethodType=bool{5243B07E-3797-4BC5-A785-95F1ADCA303F}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO4;0;ReadMethodType=bool;WriteMethodType=bool{52E58108-DA80-4EE9-AA76-584AC9F1FA5B}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO3;0;ReadMethodType=bool;WriteMethodType=bool{598CBDE3-A4ED-49F0-BDCA-347B696E37CC}resource=/MXP/AO0;0;WriteMethodType=U16{5ADEC30D-F452-4AD4-9BDA-669DD2B67725}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev1;0;ReadMethodType=bool;WriteMethodType=bool{661214A1-9FE7-4608-8D37-DF5C3DA4E0FB}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO8;0;ReadMethodType=bool;WriteMethodType=bool{66BD0067-4775-4109-8B33-A226469B06A0}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/I2C SDA;0;ReadMethodType=bool;WriteMethodType=bool{671B80DC-B818-4E5F-8127-C7988476B281}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS1;0;ReadMethodType=bool;WriteMethodType=bool{6BE03960-5D09-4F90-824B-BFE78DB60FF7}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CLK;0;ReadMethodType=bool;WriteMethodType=bool{6C7A922F-EEEB-4284-9FE8-0873933D8B33}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO14;0;ReadMethodType=bool;WriteMethodType=bool{70A119CA-D592-4134-AC93-16E483BB1C4F}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS2;0;ReadMethodType=bool;WriteMethodType=bool{734235B6-EAEB-455B-83D7-61F9CAE2B4AC}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd2;0;ReadMethodType=bool;WriteMethodType=bool{75C8F67F-8C26-431B-B86C-35694CD42CC1}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI MISO;0;ReadMethodType=bool;WriteMethodType=bool{80ACD959-D721-4879-B11E-582127F1CAC4}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM6;0;ReadMethodType=bool;WriteMethodType=bool{848DD97C-8C34-493E-A826-5F6560C0B833}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO0;0;ReadMethodType=bool;WriteMethodType=bool{85EC9EA8-0209-4FC4-BCFB-AC03D20AE1D1}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM7;0;ReadMethodType=bool;WriteMethodType=bool{8A466FD8-14B9-437F-8E4E-7FA79FA579F3}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO7;0;ReadMethodType=bool;WriteMethodType=bool{8C8AA6A5-8224-46F6-A17D-E7D592F27654}resource=/System Reset;0;ReadMethodType=bool;WriteMethodType=bool{98C2140B-6F33-40AA-A5F3-029767CA2B7E}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Mode LED Green;0;ReadMethodType=bool;WriteMethodType=bool{99029B90-24F7-4492-8D74-1622CC87F002}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM1;0;ReadMethodType=bool;WriteMethodType=bool{9D10B450-E368-4BA7-A2BC-3C9DFDC7312A}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO5;0;ReadMethodType=bool;WriteMethodType=bool{9E7F4086-37C0-4C92-BB56-C4ED769E5CA1}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO13;0;ReadMethodType=bool;WriteMethodType=bool{9FA2B2B4-2F13-4E1A-B602-E19BF2CFCDC1}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO8;0;ReadMethodType=bool;WriteMethodType=bool{A0E2C02B-6A1C-4BEF-90A2-790826CE1250}resource=/MXP/AO1;0;WriteMethodType=U16{A44ED442-E0AD-4F58-A7D6-EF96A935C2E2}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO7:0;0;ReadMethodType=u8;WriteMethodType=u8{A6ECD00E-81A8-4831-ACB3-10F3DB2CC3B6}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI MOSI;0;ReadMethodType=bool;WriteMethodType=bool{A8569FF9-8900-40B5-A35E-CD07EA36E8D2}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO9;0;ReadMethodType=bool;WriteMethodType=bool{A8CAE1AB-0B72-4DEC-8433-7E33CD2F4B73}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Comm LED Green;0;ReadMethodType=bool;WriteMethodType=bool{A8F9E728-EE86-4FBF-A622-EB9A26A86D1C}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Comm LED Red;0;ReadMethodType=bool;WriteMethodType=bool{B240366A-02B5-428C-824B-E35276773A81}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO11;0;ReadMethodType=bool;WriteMethodType=bool{B271F597-4071-44B1-BD58-BE9D078D957E}resource=/MXP/AI2;0;ReadMethodType=U16{BC3C1439-8672-4CBB-B136-3297185D6D30}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO5;0;ReadMethodType=bool;WriteMethodType=bool{BC963F8E-96E1-409F-BE55-DD80757E29FC}ResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000.000000;MaxFreq=40000000.000000;VariableFreq=0;NomFreq=40000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;{BE86254C-58E8-48BA-BF73-594E2E2F59A8}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO0;0;ReadMethodType=bool;WriteMethodType=bool{BF9374BD-328E-4F6A-B364-39B8B39CCFE8}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO2;0;ReadMethodType=bool;WriteMethodType=bool{C2F60ADE-329E-42D1-848A-53CFC82947EC}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO6;0;ReadMethodType=bool;WriteMethodType=bool{C43CF101-E9BD-492A-80AD-00B23A1FA393}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Radio LED Green;0;ReadMethodType=bool;WriteMethodType=bool{C6A88FD2-064C-4278-AD78-6DA8603662D5}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM3;0;ReadMethodType=bool;WriteMethodType=bool{C8DEABDA-8B81-4204-8FCF-579B00FE2DA3}resource=/AnalogIn1;0;ReadMethodType=U16{CC8391C5-49F8-46B5-9E3A-76F48BCD105D}resource=/MXP/AI1;0;ReadMethodType=U16{CCE60EB5-D3FD-4FE1-B566-8F8166B8DCAA}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM2;0;ReadMethodType=bool;WriteMethodType=bool{D566176E-D5A7-408F-ABF6-E4C5BF2232EE}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO1;0;ReadMethodType=bool;WriteMethodType=bool{DC33EB86-7244-4896-A82B-FBCFA70680D4}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO7;0;ReadMethodType=bool;WriteMethodType=bool{DE6AC190-6EC3-4BC2-AFEE-66AD03BBC0E3}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev2;0;ReadMethodType=bool;WriteMethodType=bool{E285CAA0-4E06-4BDD-BF4A-91E09D69DD72}NumberOfSyncRegistersForReadInProject=Auto;resource=/User Button;0;ReadMethodType=bool{E3D7EBE9-A060-4269-A99E-DC9F4BA6C6D3}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM9;0;ReadMethodType=bool;WriteMethodType=bool{E7B24FC7-AF1C-4EA3-BEF7-85359D292AC5}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO2;0;ReadMethodType=bool;WriteMethodType=bool{EB341279-8987-4228-9730-FB06EF5F95E4}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd1;0;ReadMethodType=bool;WriteMethodType=bool{ED9BD174-ED33-4F2E-A24C-E6D200C5E144}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM4;0;ReadMethodType=bool;WriteMethodType=bool{F6036ED0-66D5-4FA8-A6B6-F612DA0C941B}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO15;0;ReadMethodType=bool;WriteMethodType=bool{F6045A6B-E35B-47C8-93C0-36C49FC65D51}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS3;0;ReadMethodType=bool;WriteMethodType=bool{F75A7A1B-8511-4F7D-A4E1-319EED226DC2}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM5;0;ReadMethodType=bool;WriteMethodType=bool{F819B1CC-56D7-4D06-A152-050815D21C85}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/I2C SCL;0;ReadMethodType=bool;WriteMethodType=bool{FA3F7476-7909-46A0-AC81-FF959D35B452}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO15:8;0;ReadMethodType=u8;WriteMethodType=u8roboRIO/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSROBORIOFPGA_TARGET_FAMILYZYNQTARGET_TYPEFPGA</Property>
						<Property Name="configString.name" Type="Str">40 MHz Onboard ClockResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000.000000;MaxFreq=40000000.000000;VariableFreq=0;NomFreq=40000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;AccelerationXresource=/AccelerationX;0;ReadMethodType=I16AccelerationYresource=/AccelerationY;0;ReadMethodType=I16AccelerationZresource=/AccelerationZ;0;ReadMethodType=I16AnalogIn0resource=/AnalogIn0;0;ReadMethodType=U16AnalogIn1resource=/AnalogIn1;0;ReadMethodType=U16AnalogIn2resource=/AnalogIn2;0;ReadMethodType=U16AnalogIn3resource=/AnalogIn3;0;ReadMethodType=U16Comm LED GreenArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Comm LED Green;0;ReadMethodType=bool;WriteMethodType=boolComm LED RedArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Comm LED Red;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO0;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO1ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO1;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO2ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO2;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO3ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO3;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO4ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO4;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO5ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO5;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO6ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO6;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO7ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO7;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO8ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO8;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO9ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO9;0;ReadMethodType=bool;WriteMethodType=boolI2C SCLArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/I2C SCL;0;ReadMethodType=bool;WriteMethodType=boolI2C SDAArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/I2C SDA;0;ReadMethodType=bool;WriteMethodType=boolMode LED GreenArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Mode LED Green;0;ReadMethodType=bool;WriteMethodType=boolMode LED RedArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Mode LED Red;0;ReadMethodType=bool;WriteMethodType=boolMXP/AI0resource=/MXP/AI0;0;ReadMethodType=U16MXP/AI1resource=/MXP/AI1;0;ReadMethodType=U16MXP/AI2resource=/MXP/AI2;0;ReadMethodType=U16MXP/AI3resource=/MXP/AI3;0;ReadMethodType=U16MXP/AO0resource=/MXP/AO0;0;WriteMethodType=U16MXP/AO1resource=/MXP/AO1;0;WriteMethodType=U16MXP/DIO0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO0;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO10ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO10;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO11ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO11;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO12ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO12;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO13ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO13;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO14ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO14;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO15:8ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO15:8;0;ReadMethodType=u8;WriteMethodType=u8MXP/DIO15ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO15;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO1ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO1;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO2ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO2;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO3ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO3;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO4ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO4;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO5ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO5;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO6ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO6;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO7:0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO7:0;0;ReadMethodType=u8;WriteMethodType=u8MXP/DIO7ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO7;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO8ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO8;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO9ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO9;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM0ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM0;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM1ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM1;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM2ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM2;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM3ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM3;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM4ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM4;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM5ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM5;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM6ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM6;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM7ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM7;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM8ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM8;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM9ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM9;0;ReadMethodType=bool;WriteMethodType=boolRadio LED GreenArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Radio LED Green;0;ReadMethodType=bool;WriteMethodType=boolRadio LED RedArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Radio LED Red;0;ReadMethodType=bool;WriteMethodType=boolRelayFwd0ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd0;0;ReadMethodType=bool;WriteMethodType=boolRelayFwd1ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd1;0;ReadMethodType=bool;WriteMethodType=boolRelayFwd2ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd2;0;ReadMethodType=bool;WriteMethodType=boolRelayFwd3ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd3;0;ReadMethodType=bool;WriteMethodType=boolRelayRev0ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev0;0;ReadMethodType=bool;WriteMethodType=boolRelayRev1ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev1;0;ReadMethodType=bool;WriteMethodType=boolRelayRev2ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev2;0;ReadMethodType=bool;WriteMethodType=boolRelayRev3ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev3;0;ReadMethodType=bool;WriteMethodType=boolroboRIO/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSROBORIOFPGA_TARGET_FAMILYZYNQTARGET_TYPEFPGARSLArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RSL;0;ReadMethodType=bool;WriteMethodType=boolSPI CLKArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CLK;0;ReadMethodType=bool;WriteMethodType=boolSPI CS0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS0;0;ReadMethodType=bool;WriteMethodType=boolSPI CS1ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS1;0;ReadMethodType=bool;WriteMethodType=boolSPI CS2ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS2;0;ReadMethodType=bool;WriteMethodType=boolSPI CS3ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS3;0;ReadMethodType=bool;WriteMethodType=boolSPI MISOArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI MISO;0;ReadMethodType=bool;WriteMethodType=boolSPI MOSIArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI MOSI;0;ReadMethodType=bool;WriteMethodType=boolSystem Resetresource=/System Reset;0;ReadMethodType=bool;WriteMethodType=boolUser ButtonNumberOfSyncRegistersForReadInProject=Auto;resource=/User Button;0;ReadMethodType=bool</Property>
					</Item>
					<Item Name="Steering motor.vi" Type="VI" URL="../Sub VIs for FPGA/Steering motor.vi">
						<Property Name="configString.guid" Type="Str">{06B3F24A-6FA8-48FC-85E1-B75157BFEBBA}resource=/MXP/AI0;0;ReadMethodType=U16{08DDED8C-C667-401D-846C-96B20B7AF820}resource=/AccelerationX;0;ReadMethodType=I16{099CB7CC-A6E6-4AE5-A8AE-02936CE5F2BB}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev0;0;ReadMethodType=bool;WriteMethodType=bool{0D35A014-1D78-4E5B-982E-4722637629DE}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO10;0;ReadMethodType=bool;WriteMethodType=bool{0F9EEDA4-096B-4086-A23B-4F162A34F6BD}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO12;0;ReadMethodType=bool;WriteMethodType=bool{127836BF-FA7D-4FA6-A568-09894E1C88C1}resource=/AccelerationZ;0;ReadMethodType=I16{1A9FA34B-F010-477C-B41C-F3AD842A9A00}resource=/AnalogIn3;0;ReadMethodType=U16{1AD26CE9-A067-400C-9331-E9151A07E96B}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO4;0;ReadMethodType=bool;WriteMethodType=bool{1C262ECF-F3A0-4543-8DF9-DF4CC8BCD5EC}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO3;0;ReadMethodType=bool;WriteMethodType=bool{1FD478CF-3727-42DB-B4FC-387533EE48EE}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd0;0;ReadMethodType=bool;WriteMethodType=bool{226B8611-5EF9-4DAC-8E96-E6EE62563467}resource=/AnalogIn0;0;ReadMethodType=U16{2429CE37-4D27-4380-9775-E5C751E233EB}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev3;0;ReadMethodType=bool;WriteMethodType=bool{26FD37FF-4EAA-45C3-8DC3-B45A7DECF84C}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS0;0;ReadMethodType=bool;WriteMethodType=bool{2A878FF9-08BF-4BED-9A2B-93D6C8278EAA}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Mode LED Red;0;ReadMethodType=bool;WriteMethodType=bool{3024DAC8-C660-4F4F-984F-CC67B06B5FF9}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RSL;0;ReadMethodType=bool;WriteMethodType=bool{35A85E25-5248-49A2-9FCB-8D0C2288F02C}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO6;0;ReadMethodType=bool;WriteMethodType=bool{38C9F367-2562-4702-93EA-6DFDF26B73C7}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO9;0;ReadMethodType=bool;WriteMethodType=bool{3A64A103-2CA3-4E7B-9431-D94F8FEC9E48}resource=/AccelerationY;0;ReadMethodType=I16{40285E89-4BBB-4864-B9C0-3412186A21C1}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd3;0;ReadMethodType=bool;WriteMethodType=bool{42266E28-1E03-4562-AF12-FE9A00162EF0}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM0;0;ReadMethodType=bool;WriteMethodType=bool{423297AA-1227-42D2-8FA6-3EBF65E59DAD}resource=/MXP/AI3;0;ReadMethodType=U16{424EAB1B-D4B8-4F86-996A-FAE0642E1C97}resource=/AnalogIn2;0;ReadMethodType=U16{4FE67C9A-9802-43ED-9945-218400825E07}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM8;0;ReadMethodType=bool;WriteMethodType=bool{505A65DA-7D69-4F9B-BD51-B02E62EFE4DB}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Radio LED Red;0;ReadMethodType=bool;WriteMethodType=bool{50934D24-8842-44A4-AF8B-CC404EEF8CC2}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO1;0;ReadMethodType=bool;WriteMethodType=bool{5243B07E-3797-4BC5-A785-95F1ADCA303F}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO4;0;ReadMethodType=bool;WriteMethodType=bool{52E58108-DA80-4EE9-AA76-584AC9F1FA5B}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO3;0;ReadMethodType=bool;WriteMethodType=bool{598CBDE3-A4ED-49F0-BDCA-347B696E37CC}resource=/MXP/AO0;0;WriteMethodType=U16{5ADEC30D-F452-4AD4-9BDA-669DD2B67725}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev1;0;ReadMethodType=bool;WriteMethodType=bool{661214A1-9FE7-4608-8D37-DF5C3DA4E0FB}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO8;0;ReadMethodType=bool;WriteMethodType=bool{66BD0067-4775-4109-8B33-A226469B06A0}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/I2C SDA;0;ReadMethodType=bool;WriteMethodType=bool{671B80DC-B818-4E5F-8127-C7988476B281}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS1;0;ReadMethodType=bool;WriteMethodType=bool{6BE03960-5D09-4F90-824B-BFE78DB60FF7}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CLK;0;ReadMethodType=bool;WriteMethodType=bool{6C7A922F-EEEB-4284-9FE8-0873933D8B33}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO14;0;ReadMethodType=bool;WriteMethodType=bool{70A119CA-D592-4134-AC93-16E483BB1C4F}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS2;0;ReadMethodType=bool;WriteMethodType=bool{734235B6-EAEB-455B-83D7-61F9CAE2B4AC}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd2;0;ReadMethodType=bool;WriteMethodType=bool{75C8F67F-8C26-431B-B86C-35694CD42CC1}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI MISO;0;ReadMethodType=bool;WriteMethodType=bool{80ACD959-D721-4879-B11E-582127F1CAC4}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM6;0;ReadMethodType=bool;WriteMethodType=bool{848DD97C-8C34-493E-A826-5F6560C0B833}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO0;0;ReadMethodType=bool;WriteMethodType=bool{85EC9EA8-0209-4FC4-BCFB-AC03D20AE1D1}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM7;0;ReadMethodType=bool;WriteMethodType=bool{8A466FD8-14B9-437F-8E4E-7FA79FA579F3}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO7;0;ReadMethodType=bool;WriteMethodType=bool{8C8AA6A5-8224-46F6-A17D-E7D592F27654}resource=/System Reset;0;ReadMethodType=bool;WriteMethodType=bool{98C2140B-6F33-40AA-A5F3-029767CA2B7E}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Mode LED Green;0;ReadMethodType=bool;WriteMethodType=bool{99029B90-24F7-4492-8D74-1622CC87F002}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM1;0;ReadMethodType=bool;WriteMethodType=bool{9D10B450-E368-4BA7-A2BC-3C9DFDC7312A}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO5;0;ReadMethodType=bool;WriteMethodType=bool{9E7F4086-37C0-4C92-BB56-C4ED769E5CA1}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO13;0;ReadMethodType=bool;WriteMethodType=bool{9FA2B2B4-2F13-4E1A-B602-E19BF2CFCDC1}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO8;0;ReadMethodType=bool;WriteMethodType=bool{A0E2C02B-6A1C-4BEF-90A2-790826CE1250}resource=/MXP/AO1;0;WriteMethodType=U16{A44ED442-E0AD-4F58-A7D6-EF96A935C2E2}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO7:0;0;ReadMethodType=u8;WriteMethodType=u8{A6ECD00E-81A8-4831-ACB3-10F3DB2CC3B6}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI MOSI;0;ReadMethodType=bool;WriteMethodType=bool{A8569FF9-8900-40B5-A35E-CD07EA36E8D2}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO9;0;ReadMethodType=bool;WriteMethodType=bool{A8CAE1AB-0B72-4DEC-8433-7E33CD2F4B73}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Comm LED Green;0;ReadMethodType=bool;WriteMethodType=bool{A8F9E728-EE86-4FBF-A622-EB9A26A86D1C}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Comm LED Red;0;ReadMethodType=bool;WriteMethodType=bool{B240366A-02B5-428C-824B-E35276773A81}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO11;0;ReadMethodType=bool;WriteMethodType=bool{B271F597-4071-44B1-BD58-BE9D078D957E}resource=/MXP/AI2;0;ReadMethodType=U16{BC3C1439-8672-4CBB-B136-3297185D6D30}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO5;0;ReadMethodType=bool;WriteMethodType=bool{BC963F8E-96E1-409F-BE55-DD80757E29FC}ResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000.000000;MaxFreq=40000000.000000;VariableFreq=0;NomFreq=40000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;{BE86254C-58E8-48BA-BF73-594E2E2F59A8}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO0;0;ReadMethodType=bool;WriteMethodType=bool{BF9374BD-328E-4F6A-B364-39B8B39CCFE8}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO2;0;ReadMethodType=bool;WriteMethodType=bool{C2F60ADE-329E-42D1-848A-53CFC82947EC}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO6;0;ReadMethodType=bool;WriteMethodType=bool{C43CF101-E9BD-492A-80AD-00B23A1FA393}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Radio LED Green;0;ReadMethodType=bool;WriteMethodType=bool{C6A88FD2-064C-4278-AD78-6DA8603662D5}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM3;0;ReadMethodType=bool;WriteMethodType=bool{C8DEABDA-8B81-4204-8FCF-579B00FE2DA3}resource=/AnalogIn1;0;ReadMethodType=U16{CC8391C5-49F8-46B5-9E3A-76F48BCD105D}resource=/MXP/AI1;0;ReadMethodType=U16{CCE60EB5-D3FD-4FE1-B566-8F8166B8DCAA}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM2;0;ReadMethodType=bool;WriteMethodType=bool{D566176E-D5A7-408F-ABF6-E4C5BF2232EE}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO1;0;ReadMethodType=bool;WriteMethodType=bool{DC33EB86-7244-4896-A82B-FBCFA70680D4}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO7;0;ReadMethodType=bool;WriteMethodType=bool{DE6AC190-6EC3-4BC2-AFEE-66AD03BBC0E3}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev2;0;ReadMethodType=bool;WriteMethodType=bool{E285CAA0-4E06-4BDD-BF4A-91E09D69DD72}NumberOfSyncRegistersForReadInProject=Auto;resource=/User Button;0;ReadMethodType=bool{E3D7EBE9-A060-4269-A99E-DC9F4BA6C6D3}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM9;0;ReadMethodType=bool;WriteMethodType=bool{E7B24FC7-AF1C-4EA3-BEF7-85359D292AC5}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO2;0;ReadMethodType=bool;WriteMethodType=bool{EB341279-8987-4228-9730-FB06EF5F95E4}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd1;0;ReadMethodType=bool;WriteMethodType=bool{ED9BD174-ED33-4F2E-A24C-E6D200C5E144}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM4;0;ReadMethodType=bool;WriteMethodType=bool{F6036ED0-66D5-4FA8-A6B6-F612DA0C941B}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO15;0;ReadMethodType=bool;WriteMethodType=bool{F6045A6B-E35B-47C8-93C0-36C49FC65D51}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS3;0;ReadMethodType=bool;WriteMethodType=bool{F75A7A1B-8511-4F7D-A4E1-319EED226DC2}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM5;0;ReadMethodType=bool;WriteMethodType=bool{F819B1CC-56D7-4D06-A152-050815D21C85}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/I2C SCL;0;ReadMethodType=bool;WriteMethodType=bool{FA3F7476-7909-46A0-AC81-FF959D35B452}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO15:8;0;ReadMethodType=u8;WriteMethodType=u8roboRIO/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSROBORIOFPGA_TARGET_FAMILYZYNQTARGET_TYPEFPGA</Property>
						<Property Name="configString.name" Type="Str">40 MHz Onboard ClockResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000.000000;MaxFreq=40000000.000000;VariableFreq=0;NomFreq=40000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;AccelerationXresource=/AccelerationX;0;ReadMethodType=I16AccelerationYresource=/AccelerationY;0;ReadMethodType=I16AccelerationZresource=/AccelerationZ;0;ReadMethodType=I16AnalogIn0resource=/AnalogIn0;0;ReadMethodType=U16AnalogIn1resource=/AnalogIn1;0;ReadMethodType=U16AnalogIn2resource=/AnalogIn2;0;ReadMethodType=U16AnalogIn3resource=/AnalogIn3;0;ReadMethodType=U16Comm LED GreenArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Comm LED Green;0;ReadMethodType=bool;WriteMethodType=boolComm LED RedArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Comm LED Red;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO0;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO1ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO1;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO2ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO2;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO3ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO3;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO4ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO4;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO5ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO5;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO6ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO6;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO7ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO7;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO8ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO8;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO9ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO9;0;ReadMethodType=bool;WriteMethodType=boolI2C SCLArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/I2C SCL;0;ReadMethodType=bool;WriteMethodType=boolI2C SDAArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/I2C SDA;0;ReadMethodType=bool;WriteMethodType=boolMode LED GreenArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Mode LED Green;0;ReadMethodType=bool;WriteMethodType=boolMode LED RedArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Mode LED Red;0;ReadMethodType=bool;WriteMethodType=boolMXP/AI0resource=/MXP/AI0;0;ReadMethodType=U16MXP/AI1resource=/MXP/AI1;0;ReadMethodType=U16MXP/AI2resource=/MXP/AI2;0;ReadMethodType=U16MXP/AI3resource=/MXP/AI3;0;ReadMethodType=U16MXP/AO0resource=/MXP/AO0;0;WriteMethodType=U16MXP/AO1resource=/MXP/AO1;0;WriteMethodType=U16MXP/DIO0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO0;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO10ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO10;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO11ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO11;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO12ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO12;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO13ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO13;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO14ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO14;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO15:8ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO15:8;0;ReadMethodType=u8;WriteMethodType=u8MXP/DIO15ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO15;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO1ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO1;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO2ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO2;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO3ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO3;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO4ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO4;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO5ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO5;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO6ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO6;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO7:0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO7:0;0;ReadMethodType=u8;WriteMethodType=u8MXP/DIO7ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO7;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO8ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO8;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO9ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO9;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM0ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM0;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM1ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM1;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM2ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM2;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM3ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM3;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM4ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM4;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM5ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM5;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM6ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM6;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM7ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM7;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM8ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM8;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM9ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM9;0;ReadMethodType=bool;WriteMethodType=boolRadio LED GreenArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Radio LED Green;0;ReadMethodType=bool;WriteMethodType=boolRadio LED RedArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Radio LED Red;0;ReadMethodType=bool;WriteMethodType=boolRelayFwd0ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd0;0;ReadMethodType=bool;WriteMethodType=boolRelayFwd1ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd1;0;ReadMethodType=bool;WriteMethodType=boolRelayFwd2ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd2;0;ReadMethodType=bool;WriteMethodType=boolRelayFwd3ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd3;0;ReadMethodType=bool;WriteMethodType=boolRelayRev0ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev0;0;ReadMethodType=bool;WriteMethodType=boolRelayRev1ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev1;0;ReadMethodType=bool;WriteMethodType=boolRelayRev2ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev2;0;ReadMethodType=bool;WriteMethodType=boolRelayRev3ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev3;0;ReadMethodType=bool;WriteMethodType=boolroboRIO/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSROBORIOFPGA_TARGET_FAMILYZYNQTARGET_TYPEFPGARSLArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RSL;0;ReadMethodType=bool;WriteMethodType=boolSPI CLKArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CLK;0;ReadMethodType=bool;WriteMethodType=boolSPI CS0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS0;0;ReadMethodType=bool;WriteMethodType=boolSPI CS1ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS1;0;ReadMethodType=bool;WriteMethodType=boolSPI CS2ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS2;0;ReadMethodType=bool;WriteMethodType=boolSPI CS3ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS3;0;ReadMethodType=bool;WriteMethodType=boolSPI MISOArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI MISO;0;ReadMethodType=bool;WriteMethodType=boolSPI MOSIArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI MOSI;0;ReadMethodType=bool;WriteMethodType=boolSystem Resetresource=/System Reset;0;ReadMethodType=bool;WriteMethodType=boolUser ButtonNumberOfSyncRegistersForReadInProject=Auto;resource=/User Button;0;ReadMethodType=bool</Property>
					</Item>
					<Item Name="Swap.vi" Type="VI" URL="../Sub VIs for FPGA/Swap.vi">
						<Property Name="configString.guid" Type="Str">{06B3F24A-6FA8-48FC-85E1-B75157BFEBBA}resource=/MXP/AI0;0;ReadMethodType=U16{08DDED8C-C667-401D-846C-96B20B7AF820}resource=/AccelerationX;0;ReadMethodType=I16{099CB7CC-A6E6-4AE5-A8AE-02936CE5F2BB}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev0;0;ReadMethodType=bool;WriteMethodType=bool{0D35A014-1D78-4E5B-982E-4722637629DE}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO10;0;ReadMethodType=bool;WriteMethodType=bool{0F9EEDA4-096B-4086-A23B-4F162A34F6BD}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO12;0;ReadMethodType=bool;WriteMethodType=bool{127836BF-FA7D-4FA6-A568-09894E1C88C1}resource=/AccelerationZ;0;ReadMethodType=I16{1A9FA34B-F010-477C-B41C-F3AD842A9A00}resource=/AnalogIn3;0;ReadMethodType=U16{1AD26CE9-A067-400C-9331-E9151A07E96B}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO4;0;ReadMethodType=bool;WriteMethodType=bool{1C262ECF-F3A0-4543-8DF9-DF4CC8BCD5EC}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO3;0;ReadMethodType=bool;WriteMethodType=bool{1FD478CF-3727-42DB-B4FC-387533EE48EE}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd0;0;ReadMethodType=bool;WriteMethodType=bool{226B8611-5EF9-4DAC-8E96-E6EE62563467}resource=/AnalogIn0;0;ReadMethodType=U16{2429CE37-4D27-4380-9775-E5C751E233EB}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev3;0;ReadMethodType=bool;WriteMethodType=bool{26FD37FF-4EAA-45C3-8DC3-B45A7DECF84C}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS0;0;ReadMethodType=bool;WriteMethodType=bool{2A878FF9-08BF-4BED-9A2B-93D6C8278EAA}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Mode LED Red;0;ReadMethodType=bool;WriteMethodType=bool{3024DAC8-C660-4F4F-984F-CC67B06B5FF9}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RSL;0;ReadMethodType=bool;WriteMethodType=bool{35A85E25-5248-49A2-9FCB-8D0C2288F02C}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO6;0;ReadMethodType=bool;WriteMethodType=bool{38C9F367-2562-4702-93EA-6DFDF26B73C7}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO9;0;ReadMethodType=bool;WriteMethodType=bool{3A64A103-2CA3-4E7B-9431-D94F8FEC9E48}resource=/AccelerationY;0;ReadMethodType=I16{40285E89-4BBB-4864-B9C0-3412186A21C1}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd3;0;ReadMethodType=bool;WriteMethodType=bool{42266E28-1E03-4562-AF12-FE9A00162EF0}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM0;0;ReadMethodType=bool;WriteMethodType=bool{423297AA-1227-42D2-8FA6-3EBF65E59DAD}resource=/MXP/AI3;0;ReadMethodType=U16{424EAB1B-D4B8-4F86-996A-FAE0642E1C97}resource=/AnalogIn2;0;ReadMethodType=U16{4FE67C9A-9802-43ED-9945-218400825E07}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM8;0;ReadMethodType=bool;WriteMethodType=bool{505A65DA-7D69-4F9B-BD51-B02E62EFE4DB}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Radio LED Red;0;ReadMethodType=bool;WriteMethodType=bool{50934D24-8842-44A4-AF8B-CC404EEF8CC2}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO1;0;ReadMethodType=bool;WriteMethodType=bool{5243B07E-3797-4BC5-A785-95F1ADCA303F}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO4;0;ReadMethodType=bool;WriteMethodType=bool{52E58108-DA80-4EE9-AA76-584AC9F1FA5B}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO3;0;ReadMethodType=bool;WriteMethodType=bool{598CBDE3-A4ED-49F0-BDCA-347B696E37CC}resource=/MXP/AO0;0;WriteMethodType=U16{5ADEC30D-F452-4AD4-9BDA-669DD2B67725}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev1;0;ReadMethodType=bool;WriteMethodType=bool{661214A1-9FE7-4608-8D37-DF5C3DA4E0FB}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO8;0;ReadMethodType=bool;WriteMethodType=bool{66BD0067-4775-4109-8B33-A226469B06A0}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/I2C SDA;0;ReadMethodType=bool;WriteMethodType=bool{671B80DC-B818-4E5F-8127-C7988476B281}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS1;0;ReadMethodType=bool;WriteMethodType=bool{6BE03960-5D09-4F90-824B-BFE78DB60FF7}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CLK;0;ReadMethodType=bool;WriteMethodType=bool{6C7A922F-EEEB-4284-9FE8-0873933D8B33}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO14;0;ReadMethodType=bool;WriteMethodType=bool{70A119CA-D592-4134-AC93-16E483BB1C4F}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS2;0;ReadMethodType=bool;WriteMethodType=bool{734235B6-EAEB-455B-83D7-61F9CAE2B4AC}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd2;0;ReadMethodType=bool;WriteMethodType=bool{75C8F67F-8C26-431B-B86C-35694CD42CC1}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI MISO;0;ReadMethodType=bool;WriteMethodType=bool{80ACD959-D721-4879-B11E-582127F1CAC4}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM6;0;ReadMethodType=bool;WriteMethodType=bool{848DD97C-8C34-493E-A826-5F6560C0B833}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO0;0;ReadMethodType=bool;WriteMethodType=bool{85EC9EA8-0209-4FC4-BCFB-AC03D20AE1D1}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM7;0;ReadMethodType=bool;WriteMethodType=bool{8A466FD8-14B9-437F-8E4E-7FA79FA579F3}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO7;0;ReadMethodType=bool;WriteMethodType=bool{8C8AA6A5-8224-46F6-A17D-E7D592F27654}resource=/System Reset;0;ReadMethodType=bool;WriteMethodType=bool{98C2140B-6F33-40AA-A5F3-029767CA2B7E}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Mode LED Green;0;ReadMethodType=bool;WriteMethodType=bool{99029B90-24F7-4492-8D74-1622CC87F002}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM1;0;ReadMethodType=bool;WriteMethodType=bool{9D10B450-E368-4BA7-A2BC-3C9DFDC7312A}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO5;0;ReadMethodType=bool;WriteMethodType=bool{9E7F4086-37C0-4C92-BB56-C4ED769E5CA1}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO13;0;ReadMethodType=bool;WriteMethodType=bool{9FA2B2B4-2F13-4E1A-B602-E19BF2CFCDC1}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO8;0;ReadMethodType=bool;WriteMethodType=bool{A0E2C02B-6A1C-4BEF-90A2-790826CE1250}resource=/MXP/AO1;0;WriteMethodType=U16{A44ED442-E0AD-4F58-A7D6-EF96A935C2E2}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO7:0;0;ReadMethodType=u8;WriteMethodType=u8{A6ECD00E-81A8-4831-ACB3-10F3DB2CC3B6}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI MOSI;0;ReadMethodType=bool;WriteMethodType=bool{A8569FF9-8900-40B5-A35E-CD07EA36E8D2}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO9;0;ReadMethodType=bool;WriteMethodType=bool{A8CAE1AB-0B72-4DEC-8433-7E33CD2F4B73}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Comm LED Green;0;ReadMethodType=bool;WriteMethodType=bool{A8F9E728-EE86-4FBF-A622-EB9A26A86D1C}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Comm LED Red;0;ReadMethodType=bool;WriteMethodType=bool{B240366A-02B5-428C-824B-E35276773A81}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO11;0;ReadMethodType=bool;WriteMethodType=bool{B271F597-4071-44B1-BD58-BE9D078D957E}resource=/MXP/AI2;0;ReadMethodType=U16{BC3C1439-8672-4CBB-B136-3297185D6D30}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO5;0;ReadMethodType=bool;WriteMethodType=bool{BC963F8E-96E1-409F-BE55-DD80757E29FC}ResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000.000000;MaxFreq=40000000.000000;VariableFreq=0;NomFreq=40000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;{BE86254C-58E8-48BA-BF73-594E2E2F59A8}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO0;0;ReadMethodType=bool;WriteMethodType=bool{BF9374BD-328E-4F6A-B364-39B8B39CCFE8}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO2;0;ReadMethodType=bool;WriteMethodType=bool{C2F60ADE-329E-42D1-848A-53CFC82947EC}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO6;0;ReadMethodType=bool;WriteMethodType=bool{C43CF101-E9BD-492A-80AD-00B23A1FA393}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Radio LED Green;0;ReadMethodType=bool;WriteMethodType=bool{C6A88FD2-064C-4278-AD78-6DA8603662D5}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM3;0;ReadMethodType=bool;WriteMethodType=bool{C8DEABDA-8B81-4204-8FCF-579B00FE2DA3}resource=/AnalogIn1;0;ReadMethodType=U16{CC8391C5-49F8-46B5-9E3A-76F48BCD105D}resource=/MXP/AI1;0;ReadMethodType=U16{CCE60EB5-D3FD-4FE1-B566-8F8166B8DCAA}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM2;0;ReadMethodType=bool;WriteMethodType=bool{D566176E-D5A7-408F-ABF6-E4C5BF2232EE}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO1;0;ReadMethodType=bool;WriteMethodType=bool{DC33EB86-7244-4896-A82B-FBCFA70680D4}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO7;0;ReadMethodType=bool;WriteMethodType=bool{DE6AC190-6EC3-4BC2-AFEE-66AD03BBC0E3}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev2;0;ReadMethodType=bool;WriteMethodType=bool{E285CAA0-4E06-4BDD-BF4A-91E09D69DD72}NumberOfSyncRegistersForReadInProject=Auto;resource=/User Button;0;ReadMethodType=bool{E3D7EBE9-A060-4269-A99E-DC9F4BA6C6D3}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM9;0;ReadMethodType=bool;WriteMethodType=bool{E7B24FC7-AF1C-4EA3-BEF7-85359D292AC5}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO2;0;ReadMethodType=bool;WriteMethodType=bool{EB341279-8987-4228-9730-FB06EF5F95E4}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd1;0;ReadMethodType=bool;WriteMethodType=bool{ED9BD174-ED33-4F2E-A24C-E6D200C5E144}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM4;0;ReadMethodType=bool;WriteMethodType=bool{F6036ED0-66D5-4FA8-A6B6-F612DA0C941B}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO15;0;ReadMethodType=bool;WriteMethodType=bool{F6045A6B-E35B-47C8-93C0-36C49FC65D51}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS3;0;ReadMethodType=bool;WriteMethodType=bool{F75A7A1B-8511-4F7D-A4E1-319EED226DC2}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM5;0;ReadMethodType=bool;WriteMethodType=bool{F819B1CC-56D7-4D06-A152-050815D21C85}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/I2C SCL;0;ReadMethodType=bool;WriteMethodType=bool{FA3F7476-7909-46A0-AC81-FF959D35B452}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO15:8;0;ReadMethodType=u8;WriteMethodType=u8roboRIO/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSROBORIOFPGA_TARGET_FAMILYZYNQTARGET_TYPEFPGA</Property>
						<Property Name="configString.name" Type="Str">40 MHz Onboard ClockResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000.000000;MaxFreq=40000000.000000;VariableFreq=0;NomFreq=40000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;AccelerationXresource=/AccelerationX;0;ReadMethodType=I16AccelerationYresource=/AccelerationY;0;ReadMethodType=I16AccelerationZresource=/AccelerationZ;0;ReadMethodType=I16AnalogIn0resource=/AnalogIn0;0;ReadMethodType=U16AnalogIn1resource=/AnalogIn1;0;ReadMethodType=U16AnalogIn2resource=/AnalogIn2;0;ReadMethodType=U16AnalogIn3resource=/AnalogIn3;0;ReadMethodType=U16Comm LED GreenArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Comm LED Green;0;ReadMethodType=bool;WriteMethodType=boolComm LED RedArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Comm LED Red;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO0;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO1ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO1;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO2ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO2;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO3ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO3;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO4ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO4;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO5ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO5;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO6ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO6;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO7ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO7;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO8ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO8;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO9ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO9;0;ReadMethodType=bool;WriteMethodType=boolI2C SCLArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/I2C SCL;0;ReadMethodType=bool;WriteMethodType=boolI2C SDAArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/I2C SDA;0;ReadMethodType=bool;WriteMethodType=boolMode LED GreenArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Mode LED Green;0;ReadMethodType=bool;WriteMethodType=boolMode LED RedArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Mode LED Red;0;ReadMethodType=bool;WriteMethodType=boolMXP/AI0resource=/MXP/AI0;0;ReadMethodType=U16MXP/AI1resource=/MXP/AI1;0;ReadMethodType=U16MXP/AI2resource=/MXP/AI2;0;ReadMethodType=U16MXP/AI3resource=/MXP/AI3;0;ReadMethodType=U16MXP/AO0resource=/MXP/AO0;0;WriteMethodType=U16MXP/AO1resource=/MXP/AO1;0;WriteMethodType=U16MXP/DIO0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO0;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO10ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO10;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO11ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO11;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO12ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO12;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO13ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO13;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO14ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO14;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO15:8ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO15:8;0;ReadMethodType=u8;WriteMethodType=u8MXP/DIO15ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO15;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO1ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO1;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO2ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO2;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO3ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO3;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO4ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO4;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO5ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO5;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO6ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO6;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO7:0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO7:0;0;ReadMethodType=u8;WriteMethodType=u8MXP/DIO7ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO7;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO8ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO8;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO9ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO9;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM0ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM0;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM1ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM1;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM2ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM2;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM3ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM3;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM4ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM4;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM5ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM5;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM6ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM6;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM7ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM7;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM8ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM8;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM9ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM9;0;ReadMethodType=bool;WriteMethodType=boolRadio LED GreenArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Radio LED Green;0;ReadMethodType=bool;WriteMethodType=boolRadio LED RedArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Radio LED Red;0;ReadMethodType=bool;WriteMethodType=boolRelayFwd0ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd0;0;ReadMethodType=bool;WriteMethodType=boolRelayFwd1ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd1;0;ReadMethodType=bool;WriteMethodType=boolRelayFwd2ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd2;0;ReadMethodType=bool;WriteMethodType=boolRelayFwd3ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd3;0;ReadMethodType=bool;WriteMethodType=boolRelayRev0ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev0;0;ReadMethodType=bool;WriteMethodType=boolRelayRev1ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev1;0;ReadMethodType=bool;WriteMethodType=boolRelayRev2ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev2;0;ReadMethodType=bool;WriteMethodType=boolRelayRev3ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev3;0;ReadMethodType=bool;WriteMethodType=boolroboRIO/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSROBORIOFPGA_TARGET_FAMILYZYNQTARGET_TYPEFPGARSLArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RSL;0;ReadMethodType=bool;WriteMethodType=boolSPI CLKArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CLK;0;ReadMethodType=bool;WriteMethodType=boolSPI CS0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS0;0;ReadMethodType=bool;WriteMethodType=boolSPI CS1ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS1;0;ReadMethodType=bool;WriteMethodType=boolSPI CS2ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS2;0;ReadMethodType=bool;WriteMethodType=boolSPI CS3ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS3;0;ReadMethodType=bool;WriteMethodType=boolSPI MISOArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI MISO;0;ReadMethodType=bool;WriteMethodType=boolSPI MOSIArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI MOSI;0;ReadMethodType=bool;WriteMethodType=boolSystem Resetresource=/System Reset;0;ReadMethodType=bool;WriteMethodType=boolUser ButtonNumberOfSyncRegistersForReadInProject=Auto;resource=/User Button;0;ReadMethodType=bool</Property>
					</Item>
				</Item>
				<Item Name="40 MHz Onboard Clock" Type="FPGA Base Clock">
					<Property Name="FPGA.PersistentID" Type="Str">{BC963F8E-96E1-409F-BE55-DD80757E29FC}</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig" Type="Str">ResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000.000000;MaxFreq=40000000.000000;VariableFreq=0;NomFreq=40000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.Accuracy" Type="Dbl">100</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.ClockSignalName" Type="Str">Clk40</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.MaxDutyCycle" Type="Dbl">50</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.MaxFrequency" Type="Dbl">40000000</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.MinDutyCycle" Type="Dbl">50</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.MinFrequency" Type="Dbl">40000000</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.NominalFrequency" Type="Dbl">40000000</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.PeakPeriodJitter" Type="Dbl">250</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.ResourceName" Type="Str">40 MHz Onboard Clock</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.SupportAndRequireRuntimeEnableDisable" Type="Bool">false</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.TopSignalConnect" Type="Str">Clk40</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.VariableFrequency" Type="Bool">false</Property>
					<Property Name="NI.LV.FPGA.Valid" Type="Bool">true</Property>
					<Property Name="NI.LV.FPGA.Version" Type="Int">5</Property>
				</Item>
				<Item Name="AutoBike FPGA.vi" Type="VI" URL="../AutoBike FPGA.vi">
					<Property Name="BuildSpec" Type="Str">{91402641-A49A-4E6A-A58C-E4F59A08BF5D}</Property>
					<Property Name="configString.guid" Type="Str">{06B3F24A-6FA8-48FC-85E1-B75157BFEBBA}resource=/MXP/AI0;0;ReadMethodType=U16{08DDED8C-C667-401D-846C-96B20B7AF820}resource=/AccelerationX;0;ReadMethodType=I16{099CB7CC-A6E6-4AE5-A8AE-02936CE5F2BB}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev0;0;ReadMethodType=bool;WriteMethodType=bool{0D35A014-1D78-4E5B-982E-4722637629DE}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO10;0;ReadMethodType=bool;WriteMethodType=bool{0F9EEDA4-096B-4086-A23B-4F162A34F6BD}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO12;0;ReadMethodType=bool;WriteMethodType=bool{127836BF-FA7D-4FA6-A568-09894E1C88C1}resource=/AccelerationZ;0;ReadMethodType=I16{1A9FA34B-F010-477C-B41C-F3AD842A9A00}resource=/AnalogIn3;0;ReadMethodType=U16{1AD26CE9-A067-400C-9331-E9151A07E96B}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO4;0;ReadMethodType=bool;WriteMethodType=bool{1C262ECF-F3A0-4543-8DF9-DF4CC8BCD5EC}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO3;0;ReadMethodType=bool;WriteMethodType=bool{1FD478CF-3727-42DB-B4FC-387533EE48EE}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd0;0;ReadMethodType=bool;WriteMethodType=bool{226B8611-5EF9-4DAC-8E96-E6EE62563467}resource=/AnalogIn0;0;ReadMethodType=U16{2429CE37-4D27-4380-9775-E5C751E233EB}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev3;0;ReadMethodType=bool;WriteMethodType=bool{26FD37FF-4EAA-45C3-8DC3-B45A7DECF84C}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS0;0;ReadMethodType=bool;WriteMethodType=bool{2A878FF9-08BF-4BED-9A2B-93D6C8278EAA}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Mode LED Red;0;ReadMethodType=bool;WriteMethodType=bool{3024DAC8-C660-4F4F-984F-CC67B06B5FF9}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RSL;0;ReadMethodType=bool;WriteMethodType=bool{35A85E25-5248-49A2-9FCB-8D0C2288F02C}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO6;0;ReadMethodType=bool;WriteMethodType=bool{38C9F367-2562-4702-93EA-6DFDF26B73C7}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO9;0;ReadMethodType=bool;WriteMethodType=bool{3A64A103-2CA3-4E7B-9431-D94F8FEC9E48}resource=/AccelerationY;0;ReadMethodType=I16{40285E89-4BBB-4864-B9C0-3412186A21C1}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd3;0;ReadMethodType=bool;WriteMethodType=bool{42266E28-1E03-4562-AF12-FE9A00162EF0}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM0;0;ReadMethodType=bool;WriteMethodType=bool{423297AA-1227-42D2-8FA6-3EBF65E59DAD}resource=/MXP/AI3;0;ReadMethodType=U16{424EAB1B-D4B8-4F86-996A-FAE0642E1C97}resource=/AnalogIn2;0;ReadMethodType=U16{4FE67C9A-9802-43ED-9945-218400825E07}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM8;0;ReadMethodType=bool;WriteMethodType=bool{505A65DA-7D69-4F9B-BD51-B02E62EFE4DB}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Radio LED Red;0;ReadMethodType=bool;WriteMethodType=bool{50934D24-8842-44A4-AF8B-CC404EEF8CC2}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO1;0;ReadMethodType=bool;WriteMethodType=bool{5243B07E-3797-4BC5-A785-95F1ADCA303F}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO4;0;ReadMethodType=bool;WriteMethodType=bool{52E58108-DA80-4EE9-AA76-584AC9F1FA5B}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO3;0;ReadMethodType=bool;WriteMethodType=bool{598CBDE3-A4ED-49F0-BDCA-347B696E37CC}resource=/MXP/AO0;0;WriteMethodType=U16{5ADEC30D-F452-4AD4-9BDA-669DD2B67725}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev1;0;ReadMethodType=bool;WriteMethodType=bool{661214A1-9FE7-4608-8D37-DF5C3DA4E0FB}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO8;0;ReadMethodType=bool;WriteMethodType=bool{66BD0067-4775-4109-8B33-A226469B06A0}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/I2C SDA;0;ReadMethodType=bool;WriteMethodType=bool{671B80DC-B818-4E5F-8127-C7988476B281}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS1;0;ReadMethodType=bool;WriteMethodType=bool{6BE03960-5D09-4F90-824B-BFE78DB60FF7}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CLK;0;ReadMethodType=bool;WriteMethodType=bool{6C7A922F-EEEB-4284-9FE8-0873933D8B33}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO14;0;ReadMethodType=bool;WriteMethodType=bool{70A119CA-D592-4134-AC93-16E483BB1C4F}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS2;0;ReadMethodType=bool;WriteMethodType=bool{734235B6-EAEB-455B-83D7-61F9CAE2B4AC}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd2;0;ReadMethodType=bool;WriteMethodType=bool{75C8F67F-8C26-431B-B86C-35694CD42CC1}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI MISO;0;ReadMethodType=bool;WriteMethodType=bool{80ACD959-D721-4879-B11E-582127F1CAC4}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM6;0;ReadMethodType=bool;WriteMethodType=bool{848DD97C-8C34-493E-A826-5F6560C0B833}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO0;0;ReadMethodType=bool;WriteMethodType=bool{85EC9EA8-0209-4FC4-BCFB-AC03D20AE1D1}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM7;0;ReadMethodType=bool;WriteMethodType=bool{8A466FD8-14B9-437F-8E4E-7FA79FA579F3}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO7;0;ReadMethodType=bool;WriteMethodType=bool{8C8AA6A5-8224-46F6-A17D-E7D592F27654}resource=/System Reset;0;ReadMethodType=bool;WriteMethodType=bool{98C2140B-6F33-40AA-A5F3-029767CA2B7E}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Mode LED Green;0;ReadMethodType=bool;WriteMethodType=bool{99029B90-24F7-4492-8D74-1622CC87F002}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM1;0;ReadMethodType=bool;WriteMethodType=bool{9D10B450-E368-4BA7-A2BC-3C9DFDC7312A}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO5;0;ReadMethodType=bool;WriteMethodType=bool{9E7F4086-37C0-4C92-BB56-C4ED769E5CA1}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO13;0;ReadMethodType=bool;WriteMethodType=bool{9FA2B2B4-2F13-4E1A-B602-E19BF2CFCDC1}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO8;0;ReadMethodType=bool;WriteMethodType=bool{A0E2C02B-6A1C-4BEF-90A2-790826CE1250}resource=/MXP/AO1;0;WriteMethodType=U16{A44ED442-E0AD-4F58-A7D6-EF96A935C2E2}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO7:0;0;ReadMethodType=u8;WriteMethodType=u8{A6ECD00E-81A8-4831-ACB3-10F3DB2CC3B6}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI MOSI;0;ReadMethodType=bool;WriteMethodType=bool{A8569FF9-8900-40B5-A35E-CD07EA36E8D2}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO9;0;ReadMethodType=bool;WriteMethodType=bool{A8CAE1AB-0B72-4DEC-8433-7E33CD2F4B73}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Comm LED Green;0;ReadMethodType=bool;WriteMethodType=bool{A8F9E728-EE86-4FBF-A622-EB9A26A86D1C}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Comm LED Red;0;ReadMethodType=bool;WriteMethodType=bool{B240366A-02B5-428C-824B-E35276773A81}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO11;0;ReadMethodType=bool;WriteMethodType=bool{B271F597-4071-44B1-BD58-BE9D078D957E}resource=/MXP/AI2;0;ReadMethodType=U16{BC3C1439-8672-4CBB-B136-3297185D6D30}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO5;0;ReadMethodType=bool;WriteMethodType=bool{BC963F8E-96E1-409F-BE55-DD80757E29FC}ResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000.000000;MaxFreq=40000000.000000;VariableFreq=0;NomFreq=40000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;{BE86254C-58E8-48BA-BF73-594E2E2F59A8}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO0;0;ReadMethodType=bool;WriteMethodType=bool{BF9374BD-328E-4F6A-B364-39B8B39CCFE8}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO2;0;ReadMethodType=bool;WriteMethodType=bool{C2F60ADE-329E-42D1-848A-53CFC82947EC}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO6;0;ReadMethodType=bool;WriteMethodType=bool{C43CF101-E9BD-492A-80AD-00B23A1FA393}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Radio LED Green;0;ReadMethodType=bool;WriteMethodType=bool{C6A88FD2-064C-4278-AD78-6DA8603662D5}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM3;0;ReadMethodType=bool;WriteMethodType=bool{C8DEABDA-8B81-4204-8FCF-579B00FE2DA3}resource=/AnalogIn1;0;ReadMethodType=U16{CC8391C5-49F8-46B5-9E3A-76F48BCD105D}resource=/MXP/AI1;0;ReadMethodType=U16{CCE60EB5-D3FD-4FE1-B566-8F8166B8DCAA}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM2;0;ReadMethodType=bool;WriteMethodType=bool{D566176E-D5A7-408F-ABF6-E4C5BF2232EE}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO1;0;ReadMethodType=bool;WriteMethodType=bool{DC33EB86-7244-4896-A82B-FBCFA70680D4}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO7;0;ReadMethodType=bool;WriteMethodType=bool{DE6AC190-6EC3-4BC2-AFEE-66AD03BBC0E3}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev2;0;ReadMethodType=bool;WriteMethodType=bool{E285CAA0-4E06-4BDD-BF4A-91E09D69DD72}NumberOfSyncRegistersForReadInProject=Auto;resource=/User Button;0;ReadMethodType=bool{E3D7EBE9-A060-4269-A99E-DC9F4BA6C6D3}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM9;0;ReadMethodType=bool;WriteMethodType=bool{E7B24FC7-AF1C-4EA3-BEF7-85359D292AC5}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO2;0;ReadMethodType=bool;WriteMethodType=bool{EB341279-8987-4228-9730-FB06EF5F95E4}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd1;0;ReadMethodType=bool;WriteMethodType=bool{ED9BD174-ED33-4F2E-A24C-E6D200C5E144}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM4;0;ReadMethodType=bool;WriteMethodType=bool{F6036ED0-66D5-4FA8-A6B6-F612DA0C941B}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO15;0;ReadMethodType=bool;WriteMethodType=bool{F6045A6B-E35B-47C8-93C0-36C49FC65D51}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS3;0;ReadMethodType=bool;WriteMethodType=bool{F75A7A1B-8511-4F7D-A4E1-319EED226DC2}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM5;0;ReadMethodType=bool;WriteMethodType=bool{F819B1CC-56D7-4D06-A152-050815D21C85}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/I2C SCL;0;ReadMethodType=bool;WriteMethodType=bool{FA3F7476-7909-46A0-AC81-FF959D35B452}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO15:8;0;ReadMethodType=u8;WriteMethodType=u8roboRIO/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSROBORIOFPGA_TARGET_FAMILYZYNQTARGET_TYPEFPGA</Property>
					<Property Name="configString.name" Type="Str">40 MHz Onboard ClockResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000.000000;MaxFreq=40000000.000000;VariableFreq=0;NomFreq=40000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;AccelerationXresource=/AccelerationX;0;ReadMethodType=I16AccelerationYresource=/AccelerationY;0;ReadMethodType=I16AccelerationZresource=/AccelerationZ;0;ReadMethodType=I16AnalogIn0resource=/AnalogIn0;0;ReadMethodType=U16AnalogIn1resource=/AnalogIn1;0;ReadMethodType=U16AnalogIn2resource=/AnalogIn2;0;ReadMethodType=U16AnalogIn3resource=/AnalogIn3;0;ReadMethodType=U16Comm LED GreenArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Comm LED Green;0;ReadMethodType=bool;WriteMethodType=boolComm LED RedArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Comm LED Red;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO0;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO1ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO1;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO2ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO2;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO3ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO3;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO4ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO4;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO5ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO5;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO6ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO6;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO7ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO7;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO8ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO8;0;ReadMethodType=bool;WriteMethodType=boolDIO/DIO9ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/DIO/DIO9;0;ReadMethodType=bool;WriteMethodType=boolI2C SCLArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/I2C SCL;0;ReadMethodType=bool;WriteMethodType=boolI2C SDAArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/I2C SDA;0;ReadMethodType=bool;WriteMethodType=boolMode LED GreenArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Mode LED Green;0;ReadMethodType=bool;WriteMethodType=boolMode LED RedArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Mode LED Red;0;ReadMethodType=bool;WriteMethodType=boolMXP/AI0resource=/MXP/AI0;0;ReadMethodType=U16MXP/AI1resource=/MXP/AI1;0;ReadMethodType=U16MXP/AI2resource=/MXP/AI2;0;ReadMethodType=U16MXP/AI3resource=/MXP/AI3;0;ReadMethodType=U16MXP/AO0resource=/MXP/AO0;0;WriteMethodType=U16MXP/AO1resource=/MXP/AO1;0;WriteMethodType=U16MXP/DIO0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO0;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO10ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO10;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO11ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO11;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO12ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO12;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO13ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO13;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO14ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO14;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO15:8ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO15:8;0;ReadMethodType=u8;WriteMethodType=u8MXP/DIO15ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO15;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO1ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO1;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO2ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO2;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO3ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO3;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO4ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO4;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO5ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO5;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO6ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO6;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO7:0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO7:0;0;ReadMethodType=u8;WriteMethodType=u8MXP/DIO7ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO7;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO8ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO8;0;ReadMethodType=bool;WriteMethodType=boolMXP/DIO9ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/MXP/DIO9;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM0ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM0;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM1ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM1;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM2ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM2;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM3ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM3;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM4ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM4;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM5ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM5;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM6ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM6;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM7ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM7;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM8ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM8;0;ReadMethodType=bool;WriteMethodType=boolPWM/PWM9ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/PWM/PWM9;0;ReadMethodType=bool;WriteMethodType=boolRadio LED GreenArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Radio LED Green;0;ReadMethodType=bool;WriteMethodType=boolRadio LED RedArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/Radio LED Red;0;ReadMethodType=bool;WriteMethodType=boolRelayFwd0ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd0;0;ReadMethodType=bool;WriteMethodType=boolRelayFwd1ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd1;0;ReadMethodType=bool;WriteMethodType=boolRelayFwd2ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd2;0;ReadMethodType=bool;WriteMethodType=boolRelayFwd3ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayFwd3;0;ReadMethodType=bool;WriteMethodType=boolRelayRev0ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev0;0;ReadMethodType=bool;WriteMethodType=boolRelayRev1ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev1;0;ReadMethodType=bool;WriteMethodType=boolRelayRev2ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev2;0;ReadMethodType=bool;WriteMethodType=boolRelayRev3ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RelayRev3;0;ReadMethodType=bool;WriteMethodType=boolroboRIO/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSROBORIOFPGA_TARGET_FAMILYZYNQTARGET_TYPEFPGARSLArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/RSL;0;ReadMethodType=bool;WriteMethodType=boolSPI CLKArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CLK;0;ReadMethodType=bool;WriteMethodType=boolSPI CS0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS0;0;ReadMethodType=bool;WriteMethodType=boolSPI CS1ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS1;0;ReadMethodType=bool;WriteMethodType=boolSPI CS2ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS2;0;ReadMethodType=bool;WriteMethodType=boolSPI CS3ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI CS3;0;ReadMethodType=bool;WriteMethodType=boolSPI MISOArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI MISO;0;ReadMethodType=bool;WriteMethodType=boolSPI MOSIArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/SPI MOSI;0;ReadMethodType=bool;WriteMethodType=boolSystem Resetresource=/System Reset;0;ReadMethodType=bool;WriteMethodType=boolUser ButtonNumberOfSyncRegistersForReadInProject=Auto;resource=/User Button;0;ReadMethodType=bool</Property>
					<Property Name="NI.LV.FPGA.InterfaceBitfile" Type="Str">C:\Users\gusta\Desktop\AutoBike version1\FPGA Bitfiles\AutoBikeProject_FPGATarget_AutoBikeFPGA_EwzLm8KNttI.lvbitx</Property>
				</Item>
				<Item Name="IP Builder" Type="IP Builder Target">
					<Item Name="Dependencies" Type="Dependencies"/>
					<Item Name="Build Specifications" Type="Build"/>
				</Item>
				<Item Name="Dependencies" Type="Dependencies">
					<Item Name="vi.lib" Type="Folder">
						<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
						<Item Name="lvSimController.dll" Type="Document" URL="/&lt;vilib&gt;/rvi/Simulation/lvSimController.dll"/>
					</Item>
				</Item>
				<Item Name="Build Specifications" Type="Build">
					<Item Name="AutoBike FPGA" Type="{F4C5E96F-7410-48A5-BB87-3559BC9B167F}">
						<Property Name="AllowEnableRemoval" Type="Bool">false</Property>
						<Property Name="BuildSpecDecription" Type="Str"></Property>
						<Property Name="BuildSpecName" Type="Str">AutoBike FPGA</Property>
						<Property Name="Comp.BitfileName" Type="Str">AutoBikeProject_FPGATarget_AutoBikeFPGA_EwzLm8KNttI.lvbitx</Property>
						<Property Name="Comp.CustomXilinxParameters" Type="Str"></Property>
						<Property Name="Comp.MaxFanout" Type="Int">-1</Property>
						<Property Name="Comp.RandomSeed" Type="Bool">false</Property>
						<Property Name="Comp.Version.Build" Type="Int">0</Property>
						<Property Name="Comp.Version.Fix" Type="Int">0</Property>
						<Property Name="Comp.Version.Major" Type="Int">1</Property>
						<Property Name="Comp.Version.Minor" Type="Int">0</Property>
						<Property Name="Comp.VersionAutoIncrement" Type="Bool">false</Property>
						<Property Name="Comp.Vivado.EnableMultiThreading" Type="Bool">true</Property>
						<Property Name="Comp.Vivado.OptDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.PhysOptDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.PlaceDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.RouteDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.RunPowerOpt" Type="Bool">false</Property>
						<Property Name="Comp.Vivado.Strategy" Type="Str">Default</Property>
						<Property Name="Comp.Xilinx.DesignStrategy" Type="Str">balanced</Property>
						<Property Name="Comp.Xilinx.MapEffort" Type="Str">default(noTiming)</Property>
						<Property Name="Comp.Xilinx.ParEffort" Type="Str">standard</Property>
						<Property Name="Comp.Xilinx.SynthEffort" Type="Str">normal</Property>
						<Property Name="Comp.Xilinx.SynthGoal" Type="Str">speed</Property>
						<Property Name="Comp.Xilinx.UseRecommended" Type="Bool">true</Property>
						<Property Name="DefaultBuildSpec" Type="Bool">true</Property>
						<Property Name="DestinationDirectory" Type="Path">FPGA Bitfiles</Property>
						<Property Name="NI.LV.FPGA.LastCompiledBitfilePath" Type="Path">/C/Users/gusta/Desktop/AutoBike version1/FPGA Bitfiles/AutoBikeProject_FPGATarget_AutoBikeFPGA_EwzLm8KNttI.lvbitx</Property>
						<Property Name="NI.LV.FPGA.LastCompiledBitfilePathRelativeToProject" Type="Path">FPGA Bitfiles/AutoBikeProject_FPGATarget_AutoBikeFPGA_EwzLm8KNttI.lvbitx</Property>
						<Property Name="ProjectPath" Type="Path">/C/Users/gusta/Desktop/AutoBike version1/AutoBike Project.lvproj</Property>
						<Property Name="RelativePath" Type="Bool">true</Property>
						<Property Name="RunWhenLoaded" Type="Bool">false</Property>
						<Property Name="SupportDownload" Type="Bool">true</Property>
						<Property Name="SupportResourceEstimation" Type="Bool">false</Property>
						<Property Name="TargetName" Type="Str">FPGA Target</Property>
						<Property Name="TopLevelVI" Type="Ref">/NI-roboRIO-030cbd6b/Chassis/FPGA Target/AutoBike FPGA.vi</Property>
					</Item>
				</Item>
			</Item>
		</Item>
		<Item Name="Main.vi" Type="VI" URL="../Main.vi"/>
		<Item Name="test.vi" Type="VI" URL="../test.vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Calculate Clock Settings.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/vis/Calculate Clock Settings.vi"/>
				<Item Name="Calculate Frequency (Normal Mode).vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/vis/Calculate Frequency (Normal Mode).vi"/>
				<Item Name="Calculate Frequency (Phase Correct Mode).vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/vis/Calculate Frequency (Phase Correct Mode).vi"/>
				<Item Name="Calculate TOP (Normal Mode).vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/vis/Calculate TOP (Normal Mode).vi"/>
				<Item Name="Calculate TOP (Phase Correct Mode).vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/vis/Calculate TOP (Phase Correct Mode).vi"/>
				<Item Name="Clock Calculation Parameters.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/typedefs/Clock Calculation Parameters.ctl"/>
				<Item Name="Clock Settings.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/typedefs/Clock Settings.ctl"/>
				<Item Name="Configuration Manager.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/vis/Configuration Manager.vi"/>
				<Item Name="DIO Bank Enum.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/DIO/typedefs/DIO Bank Enum.ctl"/>
				<Item Name="DIO Bitmask to Channel Map.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/DIO/typedefs/DIO Bitmask to Channel Map.ctl"/>
				<Item Name="DIO Channels Enum.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/DIO/typedefs/DIO Channels Enum.ctl"/>
				<Item Name="DIO Channels List.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/DIO/typedefs/DIO Channels List.ctl"/>
				<Item Name="DIO FPGA Reference.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/DIO/typedefs/DIO FPGA Reference.ctl"/>
				<Item Name="DIO.lvlib" Type="Library" URL="/&lt;vilib&gt;/myRIO/Instrument Drivers/Onboard IO/DIO/DIO.lvlib"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="Find Mutex.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/vis/Find Mutex.vi"/>
				<Item Name="FPGA Ref Manager Action Enum.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/typedefs/FPGA Ref Manager Action Enum.ctl"/>
				<Item Name="FPGA Ref Manager.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/vis/FPGA Ref Manager.vi"/>
				<Item Name="Generic FPGA Reference.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/typedefs/Generic FPGA Reference.ctl"/>
				<Item Name="Hardware Version Enum.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/typedefs/Hardware Version Enum.ctl"/>
				<Item Name="IO Manager.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/vis/IO Manager.vi"/>
				<Item Name="Is FPGA Ref Available.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/vis/Is FPGA Ref Available.vi"/>
				<Item Name="Lock Mutex.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/vis/Lock Mutex.vi"/>
				<Item Name="LVNumericRepresentation.ctl" Type="VI" URL="/&lt;vilib&gt;/numeric/LVNumericRepresentation.ctl"/>
				<Item Name="Mutex Collection.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/typedefs/Mutex Collection.ctl"/>
				<Item Name="myRIO Generic Hardware Reference.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/typedefs/myRIO Generic Hardware Reference.ctl"/>
				<Item Name="myRIO v1.0 Build Bitmask DIO.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/DIO/vis/myRIO v1.0 Build Bitmask DIO.vi"/>
				<Item Name="myRIO v1.0 Close.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/myRIO v1.0 Close.vi"/>
				<Item Name="myRIO v1.0 Configure SPI.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/SPI/vis/myRIO v1.0 Configure SPI.vi"/>
				<Item Name="myRIO v1.0 Create Configuration List.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/Resource Manager/vis/myRIO v1.0 Create Configuration List.vi"/>
				<Item Name="myRIO v1.0 Generate Register Values PWM.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/PWM/vis/myRIO v1.0 Generate Register Values PWM.vi"/>
				<Item Name="myRIO v1.0 Generate Register Values SPI.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/SPI/vis/myRIO v1.0 Generate Register Values SPI.vi"/>
				<Item Name="myRIO v1.0 Reference.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/typedefs/myRIO v1.0 Reference.ctl"/>
				<Item Name="myRIO v1.0 Wait for RDY.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/System/vis/myRIO v1.0 Wait for RDY.vi"/>
				<Item Name="myRIO v1.0 Write DIO.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/DIO/vis/myRIO v1.0 Write DIO.vi"/>
				<Item Name="myRIO v1.0 Write PWM.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/PWM/vis/myRIO v1.0 Write PWM.vi"/>
				<Item Name="myRIO v1.0 Write Read SPI.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/SPI/vis/myRIO v1.0 Write Read SPI.vi"/>
				<Item Name="Named Mutex.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/typedefs/Named Mutex.ctl"/>
				<Item Name="NI_AALBase.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALBase.lvlib"/>
				<Item Name="NI_AALPro.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALPro.lvlib"/>
				<Item Name="NI_Fuzzy_Logic_API.lvlib" Type="Library" URL="/&lt;vilib&gt;/addons/Fuzzy Logic/NI_Fuzzy_Logic_API.lvlib"/>
				<Item Name="NI_Gmath.lvlib" Type="Library" URL="/&lt;vilib&gt;/gmath/NI_Gmath.lvlib"/>
				<Item Name="NI_PtbyPt.lvlib" Type="Library" URL="/&lt;vilib&gt;/ptbypt/NI_PtbyPt.lvlib"/>
				<Item Name="PWM Channels Enum.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/PWM/typedefs/PWM Channels Enum.ctl"/>
				<Item Name="PWM Channels FPGA Reference.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/PWM/typedefs/PWM Channels FPGA Reference.ctl"/>
				<Item Name="PWM Configuration v1.0.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/PWM/typedefs/PWM Configuration v1.0.ctl"/>
				<Item Name="PWM.lvlib" Type="Library" URL="/&lt;vilib&gt;/myRIO/Instrument Drivers/Onboard IO/PWM/PWM.lvlib"/>
				<Item Name="Reentrant Mutex.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/typedefs/Reentrant Mutex.ctl"/>
				<Item Name="Ref Counter Action Enum.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/typedefs/Ref Counter Action Enum.ctl"/>
				<Item Name="Ref Counter.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/vis/Ref Counter.vi"/>
				<Item Name="Resource Manager Action Enum.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/typedefs/Resource Manager Action Enum.ctl"/>
				<Item Name="roboRIO DIO Bank Enum.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/DIO/typedefs/roboRIO DIO Bank Enum.ctl"/>
				<Item Name="roboRIO DIO Bitmask to Channel Map.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/DIO/typedefs/roboRIO DIO Bitmask to Channel Map.ctl"/>
				<Item Name="roboRIO DIO FPGA Reference.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/DIO/typedefs/roboRIO DIO FPGA Reference.ctl"/>
				<Item Name="roboRIO IO Config FPGA Reference.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/Resource Manager/typedefs/roboRIO IO Config FPGA Reference.ctl"/>
				<Item Name="roboRIO PWM Channels FPGA Reference.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/PWM/typedefs/roboRIO PWM Channels FPGA Reference.ctl"/>
				<Item Name="roboRIO SPI Channels FPGA Reference.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/SPI/typedefs/roboRIO SPI Channels FPGA Reference.ctl"/>
				<Item Name="roboRIO v1.0 Build Bitmask DIO.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/DIO/vis/roboRIO v1.0 Build Bitmask DIO.vi"/>
				<Item Name="roboRIO v1.0 Build Mutex Name.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/Resource Manager/vis/roboRIO v1.0 Build Mutex Name.vi"/>
				<Item Name="roboRIO v1.0 Build MUX Configuration DIO.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/DIO/vis/roboRIO v1.0 Build MUX Configuration DIO.vi"/>
				<Item Name="roboRIO v1.0 Build MUX Configuration PWM.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/PWM/vis/roboRIO v1.0 Build MUX Configuration PWM.vi"/>
				<Item Name="roboRIO v1.0 Build MUX Configuration SPI.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/SPI/vis/roboRIO v1.0 Build MUX Configuration SPI.vi"/>
				<Item Name="roboRIO v1.0 Channel Reservation Info.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/Resource Manager/typedefs/roboRIO v1.0 Channel Reservation Info.ctl"/>
				<Item Name="roboRIO v1.0 Channel Reservation List.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/Resource Manager/typedefs/roboRIO v1.0 Channel Reservation List.ctl"/>
				<Item Name="roboRIO v1.0 Configure IO.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/Resource Manager/vis/roboRIO v1.0 Configure IO.vi"/>
				<Item Name="roboRIO v1.0 Configure SPI.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/SPI/vis/roboRIO v1.0 Configure SPI.vi"/>
				<Item Name="roboRIO v1.0 Connector List.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/Resource Manager/typedefs/roboRIO v1.0 Connector List.ctl"/>
				<Item Name="roboRIO v1.0 Create Configuration List.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/Resource Manager/vis/roboRIO v1.0 Create Configuration List.vi"/>
				<Item Name="roboRIO v1.0 DIO Channels Enum.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/DIO/typedefs/roboRIO v1.0 DIO Channels Enum.ctl"/>
				<Item Name="roboRIO v1.0 Open DIO.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/DIO/vis/roboRIO v1.0 Open DIO.vi"/>
				<Item Name="roboRIO v1.0 Open PWM.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/PWM/vis/roboRIO v1.0 Open PWM.vi"/>
				<Item Name="roboRIO v1.0 Open SPI.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/SPI/vis/roboRIO v1.0 Open SPI.vi"/>
				<Item Name="roboRIO v1.0 Open.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/roboRIO v1.0 Open.vi"/>
				<Item Name="roboRIO v1.0 PWM Channels Enum.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/PWM/typedefs/roboRIO v1.0 PWM Channels Enum.ctl"/>
				<Item Name="roboRIO v1.0 Reserve Channel List.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/Resource Manager/vis/roboRIO v1.0 Reserve Channel List.vi"/>
				<Item Name="roboRIO v1.0 Reserve Channel.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/Resource Manager/vis/roboRIO v1.0 Reserve Channel.vi"/>
				<Item Name="roboRIO v1.0 Reserve DIO.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/DIO/vis/roboRIO v1.0 Reserve DIO.vi"/>
				<Item Name="roboRIO v1.0 Reserve PWM.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/PWM/vis/roboRIO v1.0 Reserve PWM.vi"/>
				<Item Name="roboRIO v1.0 Reserve SPI.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/SPI/vis/roboRIO v1.0 Reserve SPI.vi"/>
				<Item Name="roboRIO v1.0 SPI Channels Enum.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/SPI/typedefs/roboRIO v1.0 SPI Channels Enum.ctl"/>
				<Item Name="roboRIO v1.0 Unreserve Channel.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/Resource Manager/vis/roboRIO v1.0 Unreserve Channel.vi"/>
				<Item Name="roboRIO v1.0 Write DIO.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/DIO/vis/roboRIO v1.0 Write DIO.vi"/>
				<Item Name="roboRIO v1.0 Write PWM.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/PWM/vis/roboRIO v1.0 Write PWM.vi"/>
				<Item Name="roboRIO v1.0 Write Read SPI.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/SPI/vis/roboRIO v1.0 Write Read SPI.vi"/>
				<Item Name="SPI Channels Enum.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/SPI/typedefs/SPI Channels Enum.ctl"/>
				<Item Name="SPI Channels FPGA Reference.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/SPI/typedefs/SPI Channels FPGA Reference.ctl"/>
				<Item Name="SPI Clock Phase.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/SPI/typedefs/SPI Clock Phase.ctl"/>
				<Item Name="SPI Clock Polarity.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/SPI/typedefs/SPI Clock Polarity.ctl"/>
				<Item Name="SPI Configuration v1.0.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/SPI/typedefs/SPI Configuration v1.0.ctl"/>
				<Item Name="SPI Data Direction.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/SPI/typedefs/SPI Data Direction.ctl"/>
				<Item Name="SPI Frame Length.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/SPI/typedefs/SPI Frame Length.ctl"/>
				<Item Name="SPI.lvlib" Type="Library" URL="/&lt;vilib&gt;/myRIO/Instrument Drivers/Onboard IO/SPI/SPI.lvlib"/>
				<Item Name="System FPGA Reference.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/System/typedefs/System FPGA Reference.ctl"/>
				<Item Name="Unlock Mutex.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/vis/Unlock Mutex.vi"/>
				<Item Name="Validate Channels.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/vis/Validate Channels.vi"/>
				<Item Name="VariantType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/VariantDataType/VariantType.lvlib"/>
			</Item>
			<Item Name="AutoBikeProject_FPGATarget_AutoBikeFPGA_EwzLm8KNttI.lvbitx" Type="Document" URL="../FPGA Bitfiles/AutoBikeProject_FPGATarget_AutoBikeFPGA_EwzLm8KNttI.lvbitx"/>
			<Item Name="Bicycle motor.vi" Type="VI" URL="../Sub VIs/Bicycle motor.vi"/>
			<Item Name="dt to velocity.vi" Type="VI" URL="../Sub VIs/dt to velocity.vi"/>
			<Item Name="lvanlys.dll" Type="Document" URL="/&lt;resource&gt;/lvanlys.dll"/>
			<Item Name="Moving average filter.vi" Type="VI" URL="../Sub VIs for FPGA/Moving average filter.vi"/>
			<Item Name="NiFpgaLv.dll" Type="Document" URL="NiFpgaLv.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="RC steering control.vi" Type="VI" URL="../Sub VIs/RC steering control.vi"/>
			<Item Name="Receiver.vi" Type="VI" URL="../Sub VIs/Receiver.vi"/>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="FuzzyTest" Type="{69A947D5-514E-4E75-818E-69657C0547D8}">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{8D79371B-3A51-46F6-A952-06A5255A9083}</Property>
				<Property Name="App_INI_GUID" Type="Str">{18C3A2CA-8E27-4CC5-B5D1-0F81E415D023}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{6F7DB9AD-AF88-4A03-8610-9EA84889860A}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">FuzzyTest</Property>
				<Property Name="Bld_compilerOptLevel" Type="Int">0</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/NI_AB_PROJECTNAME/NI_AB_TARGETNAME/FuzzyTest</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{01351157-81E6-4569-9406-9513D73AC85E}</Property>
				<Property Name="Bld_targetDestDir" Type="Path">/home/lvuser/natinst/bin</Property>
				<Property Name="Bld_version.build" Type="Int">2</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">AutoBikeFuzzy.rtexe</Property>
				<Property Name="Destination[0].path" Type="Path">/home/lvuser/natinst/bin/AutoBikeFuzzy.rtexe</Property>
				<Property Name="Destination[0].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">/home/lvuser/natinst/bin/data</Property>
				<Property Name="Destination[1].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{D27A6F85-B1C8-4D0B-8650-262CF2C67076}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/NI-roboRIO-030cbd6b/Main.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="Source[10].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[10].itemID" Type="Ref">/NI-roboRIO-030cbd6b/Dependencies/Bicycle motor.vi</Property>
				<Property Name="Source[10].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[10].type" Type="Str">VI</Property>
				<Property Name="Source[11].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[11].itemID" Type="Ref">/NI-roboRIO-030cbd6b/SubVIs/Current Sensor.vi</Property>
				<Property Name="Source[11].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[11].type" Type="Str">VI</Property>
				<Property Name="Source[12].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[12].itemID" Type="Ref">/NI-roboRIO-030cbd6b/Dependencies/dt to velocity.vi</Property>
				<Property Name="Source[12].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[12].type" Type="Str">VI</Property>
				<Property Name="Source[13].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[13].itemID" Type="Ref"></Property>
				<Property Name="Source[13].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[13].type" Type="Str">VI</Property>
				<Property Name="Source[14].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[14].itemID" Type="Ref"></Property>
				<Property Name="Source[14].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[14].type" Type="Str">VI</Property>
				<Property Name="Source[15].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[15].itemID" Type="Ref">/NI-roboRIO-030cbd6b/Dependencies/Items in Memory/Steering motor.vi</Property>
				<Property Name="Source[15].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[15].type" Type="Str">VI</Property>
				<Property Name="Source[16].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[16].itemID" Type="Ref">/NI-roboRIO-030cbd6b/Bias control.ctl</Property>
				<Property Name="Source[16].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[16].type" Type="Str">VI</Property>
				<Property Name="Source[17].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[17].itemID" Type="Ref">/NI-roboRIO-030cbd6b/Dependencies/RC steering control.vi</Property>
				<Property Name="Source[17].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[17].type" Type="Str">VI</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[2].itemID" Type="Ref">/NI-roboRIO-030cbd6b/SubVIs/Brake controller/Brake.vi</Property>
				<Property Name="Source[2].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[2].type" Type="Str">VI</Property>
				<Property Name="Source[3].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[3].itemID" Type="Ref">/NI-roboRIO-030cbd6b/SubVIs/Brake controller/BrakeControl.vi</Property>
				<Property Name="Source[3].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[3].type" Type="Str">VI</Property>
				<Property Name="Source[4].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[4].itemID" Type="Ref">/NI-roboRIO-030cbd6b/SubVIs/IMU/IMUcalc Bias.vi</Property>
				<Property Name="Source[4].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[4].type" Type="Str">VI</Property>
				<Property Name="Source[5].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[5].itemID" Type="Ref">/NI-roboRIO-030cbd6b/SubVIs/IMU/IMUconfig.vi</Property>
				<Property Name="Source[5].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[5].type" Type="Str">VI</Property>
				<Property Name="Source[6].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[6].itemID" Type="Ref">/NI-roboRIO-030cbd6b/SubVIs/IMU/IMUprocess live readings.vi</Property>
				<Property Name="Source[6].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[6].type" Type="Str">VI</Property>
				<Property Name="Source[7].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[7].itemID" Type="Ref">/NI-roboRIO-030cbd6b/SubVIs/IMU/IMUprocess.vi</Property>
				<Property Name="Source[7].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[7].type" Type="Str">VI</Property>
				<Property Name="Source[8].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[8].itemID" Type="Ref">/NI-roboRIO-030cbd6b/SubVIs/IMU/IMUread.vi</Property>
				<Property Name="Source[8].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[8].type" Type="Str">VI</Property>
				<Property Name="Source[9].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[9].itemID" Type="Ref">/NI-roboRIO-030cbd6b/SubVIs/IMU/IMUrollpitch.vi</Property>
				<Property Name="Source[9].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[9].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">18</Property>
				<Property Name="TgtF_fileDescription" Type="Str">FuzzyTest</Property>
				<Property Name="TgtF_internalName" Type="Str">FuzzyTest</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2018 </Property>
				<Property Name="TgtF_productName" Type="Str">FuzzyTest</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{F877DF63-620F-40C6-80E5-ED6FCD0615AA}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">AutoBikeFuzzy.rtexe</Property>
			</Item>
		</Item>
	</Item>
</Project>
