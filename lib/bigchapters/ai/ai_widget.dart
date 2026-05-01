import '/backend/ai_agents/ai_agent.dart';
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'ai_model.dart';
export 'ai_model.dart';

class AiWidget extends StatefulWidget {
  const AiWidget({super.key});

  static String routeName = 'AI';
  static String routePath = '/ai';

  @override
  State<AiWidget> createState() => _AiWidgetState();
}

class _AiWidgetState extends State<AiWidget> {
  late AiModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AiModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFF8F8F8),
        body: SafeArea(
          top: true,
          child: Stack(
            alignment: AlignmentDirectional(0.0, 1.0),
            children: [
              Align(
                alignment: AlignmentDirectional(-0.95, -0.97),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed(HomepageWidget.routeName);
                  },
                  child: Container(
                    width: 60.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: Image.asset(
                          'assets/images/Go_Back__2_-removebg-preview.png',
                        ).image,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 80.0, 16.0, 90.0),
                child: Builder(
                  builder: (context) {
                    final chatItems = _model.chats.toList();

                    return ListView.builder(
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.vertical,
                      itemCount: chatItems.length,
                      itemBuilder: (context, chatItemsIndex) {
                        final chatItemsItem = chatItems[chatItemsIndex];
                        return SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                chatItemsItem.message,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      color: Colors.black,
                                      fontSize: 20.0,
                                      letterSpacing: 0.0,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .bodyMediumIsCustom,
                                    ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(1.0, 0.0),
                                child: Text(
                                  valueOrDefault<String>(
                                    chatItemsItem.role?.name,
                                    'role',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        color: Colors.black,
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .bodyMediumIsCustom,
                                      ),
                                ),
                              ),
                            ].divide(SizedBox(height: 12.0)),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12.0, 10.0, 12.0, 10.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 8.0,
                        color: Color(0x1A000000),
                        offset: Offset(
                          0.0,
                          -2.0,
                        ),
                      )
                    ],
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: TextFormField(
                            controller: _model.textController,
                            focusNode: _model.textFieldFocusNode,
                            autofocus: false,
                            textCapitalization: TextCapitalization.sentences,
                            textInputAction: TextInputAction.done,
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: 'Type a message...',
                              hintStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyMediumFamily,
                                    color: Color(0xFFAAAAAA),
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .bodyMediumIsCustom,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFE0E0E0),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(24.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFFF6B9D),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(24.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(24.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(24.0),
                              ),
                              filled: true,
                              fillColor: Color(0xFFF5F5F5),
                              contentPadding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 10.0, 16.0, 10.0),
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  color: Colors.black,
                                  fontSize: 14.0,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .bodyMediumIsCustom,
                                ),
                            maxLines: 4,
                            minLines: 1,
                            validator: _model.textControllerValidator
                                .asValidator(context),
                            inputFormatters: [
                              if (!isAndroid && !isiOS)
                                TextInputFormatter.withFunction(
                                    (oldValue, newValue) {
                                  return TextEditingValue(
                                    selection: newValue.selection,
                                    text: newValue.text.toCapitalization(
                                        TextCapitalization.sentences),
                                  );
                                }),
                            ],
                          ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            _model.addToChats(ChatStruct(
                              role: Role.User,
                              message: _model.textController.text,
                            ));
                            safeSetState(() {});
                            await callAiAgent(
                              context: context,
                              prompt: _model.textController.text,
                              threadId: 'personal_assistant',
                              agentCloudFunctionName: 'personalAssistantAgent',
                              provider: 'GOOGLE',
                              agentJson:
                                  '{\"status\":\"LIVE\",\"identifier\":{\"name\":\"personalAssistantAgent\",\"key\":\"b8mfa\"},\"name\":\"Personal Assistant Agent \",\"description\":\"Personal assistant agent\",\"aiModel\":{\"provider\":\"GOOGLE\",\"model\":\"gemini-2.5-flash\",\"parameters\":{\"temperature\":{\"inputValue\":1},\"maxTokens\":{\"inputValue\":65535},\"topP\":{\"inputValue\":0.95}},\"messages\":[{\"role\":\"SYSTEM\",\"text\":\"You are an AI assistant built into TeenTalk, an app dedicated to sexual education and support for young people and teen mothers.\\nTeenTalk\'s mission is to provide a safe, judgment-free space where young people can ask questions and get support. \\nYou are a friendly and supportive assistant for TeenTalk.\\nYou are here to support young people and teen mothers with two specific topics: sexual education and support for young/teen mothers.\\n\\nHow you behave:\\n\\nYou\'re warm, casual, and friendly — like a trusted older friend, not a doctor or teacher\\nYou can do small talk (\\\"how are you?\\\", \\\"how\'s your day?\\\") to make the user feel comfortable\\nYou never judge, shame, or make the user feel bad for their questions\\nYou use simple, clear language — no complicated medical jargon\\nYou are patient and encouraging, especially with sensitive topics\\nUse emojis\\n\\nAbout TeenTalk App Content:\\n\\nThe app currently has interactive videos and lessons on: contraception and consent\\nSections still in development (coming soon at launch): puberty, anatomy, and sexual diseases\\nIf a user asks why certain sections are locked or unavailable, explain that they are still being worked on and will be ready when the TeenTalk app is officially launched\\n\\nFor teen mothers, the app offers support with:\\n\\nBaby development and care in the first 4 years of life\\nHow to find sources of income as a teen mother\\nRights of teen mothers\\n\\nWhat you help with:\\n\\nSexual education (puberty, contraception, consent, relationships, STIs, body changes, etc.)\\nSupport for teen mothers (pregnancy, parenting tips, emotional support, resources, rights)\\nGeneral emotional support related to these topics\\nSmall talk\\n\\nWhat you do NOT do:\\n\\nYou do not answer questions outside of sexual education and teen mother support\\nIf someone asks about something unrelated (homework, coding, news, etc.), you kindly redirect them:\\n\\n\\n\\\"That\'s a bit outside what I can help with, but I\'m here if you have any questions about sexual health or need support as a young mom!\\\"\\n\\nRules:\\n\\nAlways respond in the same language the user writes in\\nKeep responses warm and short\\nKeep your answers short and concise, maximum 3-4 sentences\\nNever provide medical diagnoses — always suggest speaking to a doctor for medical concerns\\nIf someone seems to be in danger or crisis, encourage them to speak to a trusted adult or call a helpline\\nKeep responses short and concise — only give longer, detailed responses when the topic is sexual education or teen mother support\\nMental health & emotional support:\\nIf any user shares they\'re feeling sad, anxious, overwhelmed, or struggling emotionally, respond with one warm, curious question to show you care (e.g. \\\"what\'s been going on?\\\"). After they respond, acknowledge their feelings warmly and gently encourage them to talk to a trusted person — a parent, teacher, school counselor, or psychologist. Never frame this as something you \\\"can\'t\\\" help with — just naturally guide them toward real support.\\nIf the user is a teen mother and opens up about emotional struggles: Listen warmly, ask one or two gentle follow-up questions so they feel heard, but never give advice or try to solve their problems. After they\'ve shared enough, naturally and warmly redirect them to a qualified person (psychologist, counselor, trusted adult). Your role is to make them feel heard and safe — then point them in the right direction.\\nNever give mental health advice. Never say this is \\\"outside what you can help with.\\\" Just listen, validate, and guide.\\n\\nAdapting to the user\'s vibe:\\nPay attention to how the user writes — their tone, energy, and style. If they\'re casual and use slang, match that energy. If they\'re more serious or formal, be calm and grounded. Mirror their pace: if they send short messages, keep your replies short too. Always feel like their kind of conversation, not a generic chatbot response.\\nIf the user uses nicknames, slang, or a very casual tone (e.g. \\\"heyy\\\", \\\"bestie\\\", \\\"omg\\\"), fully lean into that energy — use the same kind of language back, not just acknowledge it. Be genuinely fun and natural, not performatively casual. Think less \\\"assistant trying to be cool\\\" and more \\\"friend who already gets you.\\\"\"},{\"role\":\"ASSISTANT\",\"text\":\"Hey! 🚀 Welcome to TeenTalk!\\nI\'m your personal guide here. Whether you\'re looking for a feature, need help with something, or just have a question — I\'ve got you. What\'s on your mind?\"}]},\"requestOptions\":{\"requestTypes\":[\"PLAINTEXT\"]},\"responseOptions\":{\"responseType\":\"PLAINTEXT\"}}',
                              responseType: 'PLAINTEXT',
                            ).then((generatedText) {
                              safeSetState(
                                  () => _model.agentResponse = generatedText);
                            });

                            _model.addToChats(ChatStruct(
                              role: Role.Assistant,
                              message: _model.agentResponse,
                            ));
                            safeSetState(() {});
                            safeSetState(() {
                              _model.textController?.clear();
                            });

                            safeSetState(() {});
                          },
                          child: Container(
                            width: 44.0,
                            height: 44.0,
                            decoration: BoxDecoration(
                              color: Color(0xFFFF6B9D),
                              shape: BoxShape.circle,
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Icon(
                                Icons.send_rounded,
                                color: Colors.white,
                                size: 20.0,
                              ),
                            ),
                          ),
                        ),
                      ].divide(SizedBox(width: 8.0)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
