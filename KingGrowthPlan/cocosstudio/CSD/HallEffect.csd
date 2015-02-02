<GameProjectFile>
  <PropertyGroup Type="Layer" Name="HallEffect" ID="113eb336-5867-420f-87f0-fd3f3ae13d44" Version="2.0.6.0" />
  <Content ctype="GameProjectContent">
    <Content>
      <Animation Duration="60" Speed="1.0000">
        <Timeline ActionTag="-646667452" FrameType="TextureFrame">
          <TextureFrame FrameIndex="0">
            <TextureFile Type="Normal" Path="Images/Hall/effect/hall_3.png" />
          </TextureFrame>
          <TextureFrame FrameIndex="30">
            <TextureFile Type="Normal" Path="Images/Hall/effect/hall_4.png" />
          </TextureFrame>
          <TextureFrame FrameIndex="60">
            <TextureFile Type="Normal" Path="Images/Hall/effect/hall_3.png" />
          </TextureFrame>
        </Timeline>
      </Animation>
      <ObjectData Name="Layer" FrameEvent="" Tag="201" ctype="LayerObjectData">
        <Position X="0.0000" Y="0.0000" />
        <Scale ScaleX="1.0000" ScaleY="1.0000" />
        <AnchorPoint />
        <CColor A="255" R="255" G="255" B="255" />
        <Size X="960.0000" Y="640.0000" />
        <PrePosition X="0.0000" Y="0.0000" />
        <PreSize X="0.0000" Y="0.0000" />
        <Children>
          <NodeObjectData Name="mask" CanEdit="False" ActionTag="-651251103" FrameEvent="" Tag="202" ObjectIndex="1" TouchEnable="True" ComboBoxIndex="1" ColorAngle="90.0000" ctype="PanelObjectData">
            <Position X="0.0000" Y="0.0000" />
            <Scale ScaleX="1.0000" ScaleY="1.0000" />
            <AnchorPoint />
            <CColor A="255" R="255" G="255" B="255" />
            <Size X="960.0000" Y="640.0000" />
            <PrePosition X="0.0000" Y="0.0000" />
            <PreSize X="1.0000" Y="1.0000" />
            <SingleColor A="255" R="0" G="0" B="0" />
            <FirstColor A="255" R="0" G="0" B="0" />
            <EndColor A="255" R="255" G="255" B="255" />
            <ColorVector ScaleY="1.0000" />
          </NodeObjectData>
          <NodeObjectData Name="yushuyuan" ActionTag="78926726" FrameEvent="" Tag="205" ObjectIndex="3" ctype="SpriteObjectData">
            <Position X="382.0017" Y="319.9999" />
            <Scale ScaleX="1.0000" ScaleY="1.0000" />
            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
            <CColor A="255" R="255" G="255" B="255" />
            <Size X="263.0000" Y="240.0000" />
            <PrePosition X="0.3979" Y="0.5000" />
            <PreSize X="0.0000" Y="0.0000" />
            <Children>
              <NodeObjectData Name="effectSpr" ActionTag="-646667452" FrameEvent="" Tag="204" ObjectIndex="2" ctype="SpriteObjectData">
                <Position X="130.1697" Y="147.7243" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                <CColor A="255" R="255" G="255" B="255" />
                <Size X="223.0000" Y="156.0000" />
                <PrePosition X="0.4949" Y="0.6155" />
                <PreSize X="0.0000" Y="0.0000" />
                <FileData Type="Normal" Path="Images/Hall/effect/hall_3.png" />
              </NodeObjectData>
              <NodeObjectData Name="Text_1" ActionTag="1287950158" FrameEvent="" Tag="207" ObjectIndex="1" FontSize="20" LabelText="皇上在御书园读书。" ctype="TextObjectData">
                <Position X="129.9108" Y="48.0128" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                <CColor A="255" R="255" G="255" B="255" />
                <Size X="180.0000" Y="23.0000" />
                <PrePosition X="0.4940" Y="0.2001" />
                <PreSize X="0.0000" Y="0.0000" />
                <FontResource Type="Normal" Path="Images/Fonts/FZHLJW.TTF" />
              </NodeObjectData>
            </Children>
            <FileData Type="Normal" Path="Images/Hall/hall_1.png" />
          </NodeObjectData>
          <NodeObjectData Name="finish" ActionTag="1541029574" FrameEvent="" CallBackType="Click" CallBackName="HallEffectFinish" Tag="206" ObjectIndex="1" TouchEnable="True" FontSize="35" ButtonText="继续" Scale9Enable="True" LeftEage="10" RightEage="10" TopEage="10" BottomEage="10" Scale9OriginX="10" Scale9OriginY="10" Scale9Width="71" Scale9Height="12" ctype="ButtonObjectData">
            <Position X="383.3707" Y="154.1502" />
            <Scale ScaleX="1.0000" ScaleY="1.0000" />
            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
            <CColor A="255" R="255" G="255" B="255" />
            <Size X="120.0000" Y="50.0000" />
            <PrePosition X="0.3993" Y="0.2409" />
            <PreSize X="0.1250" Y="0.0781" />
            <FontResource Type="Normal" Path="Images/Fonts/FZHLJW.TTF" />
            <TextColor A="255" R="255" G="255" B="255" />
            <DisabledFileData Type="Normal" Path="Images/CreateScene/createRole_3.png" />
            <PressedFileData Type="Normal" Path="Images/CreateScene/createRole_3.png" />
            <NormalFileData Type="Normal" Path="Images/CreateScene/createRole_3.png" />
          </NodeObjectData>
          <NodeObjectData Name="result" ActionTag="-1816551678" FrameEvent="" Tag="208" ObjectIndex="2" FontSize="20" LabelText="触类旁通" ctype="TextObjectData">
            <Position X="380.4146" Y="223.3997" />
            <Scale ScaleX="1.0000" ScaleY="1.0000" />
            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
            <CColor A="255" R="255" G="255" B="255" />
            <Size X="80.0000" Y="23.0000" />
            <PrePosition X="0.3963" Y="0.3491" />
            <PreSize X="0.0000" Y="0.0000" />
            <FontResource Type="Normal" Path="Images/Fonts/FZHLJW.TTF" />
          </NodeObjectData>
        </Children>
      </ObjectData>
    </Content>
  </Content>
</GameProjectFile>