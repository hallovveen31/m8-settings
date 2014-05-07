.class public Lcom/android/settings/tts/TtsEnginePreference;
.super Lcom/htc/preference/HtcPreference;
.source "TtsEnginePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;
    }
.end annotation


# static fields
.field static final FRAGMENT_ARGS_LABEL:Ljava/lang/String; = "label"

.field static final FRAGMENT_ARGS_NAME:Ljava/lang/String; = "name"

.field static final FRAGMENT_ARGS_VOICES:Ljava/lang/String; = "voices"

.field private static final TAG:Ljava/lang/String; = "TtsEnginePreference"


# instance fields
.field private final mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

.field private final mPreferenceActivity:Lcom/htc/preference/HtcPreferenceActivity;

.field private volatile mPreventRadioButtonCallbacks:Z

.field private mRadioButton:Landroid/widget/RadioButton;

.field private final mRadioChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mSettingsIcon:Landroid/view/View;

.field private final mSharedState:Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;

.field private mVoiceCheckData:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$EngineInfo;Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;Lcom/htc/preference/HtcPreferenceActivity;)V
    .locals 1
    .parameter "context"
    .parameter "info"
    .parameter "state"
    .parameter "prefActivity"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    .line 91
    new-instance v0, Lcom/android/settings/tts/TtsEnginePreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/tts/TtsEnginePreference$1;-><init>(Lcom/android/settings/tts/TtsEnginePreference;)V

    iput-object v0, p0, Lcom/android/settings/tts/TtsEnginePreference;->mRadioChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 102
    const v0, 0x7f0400cb

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/TtsEnginePreference;->setLayoutResource(I)V

    .line 104
    iput-object p3, p0, Lcom/android/settings/tts/TtsEnginePreference;->mSharedState:Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;

    .line 105
    iput-object p4, p0, Lcom/android/settings/tts/TtsEnginePreference;->mPreferenceActivity:Lcom/htc/preference/HtcPreferenceActivity;

    .line 106
    iput-object p2, p0, Lcom/android/settings/tts/TtsEnginePreference;->mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/tts/TtsEnginePreference;->mPreventRadioButtonCallbacks:Z

    .line 109
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreference;->mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-object v0, v0, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/TtsEnginePreference;->setKey(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreference;->mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-object v0, v0, Landroid/speech/tts/TextToSpeech$EngineInfo;->label:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/TtsEnginePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 111
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/tts/TtsEnginePreference;Landroid/widget/CompoundButton;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/settings/tts/TtsEnginePreference;->onRadioButtonClicked(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/tts/TtsEnginePreference;)Landroid/speech/tts/TextToSpeech$EngineInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreference;->mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/tts/TtsEnginePreference;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreference;->mVoiceCheckData:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/tts/TtsEnginePreference;)Lcom/htc/preference/HtcPreferenceActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreference;->mPreferenceActivity:Lcom/htc/preference/HtcPreferenceActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/tts/TtsEnginePreference;Landroid/widget/Checkable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/settings/tts/TtsEnginePreference;->makeCurrentEngine(Landroid/widget/Checkable;)V

    return-void
.end method

.method private displayDataAlert(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 8
    .parameter "positiveOnClickListener"
    .parameter "negativeOnClickListener"

    .prologue
    const/4 v7, 0x1

    .line 220
    const-string v2, "TtsEnginePreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Displaying data alert for :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/tts/TtsEnginePreference;->mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-object v4, v4, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    new-instance v0, Lcom/htc/dialog/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/tts/TtsEnginePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 223
    .local v0, builder:Lcom/htc/dialog/HtcAlertDialog$Builder;
    const v2, 0x1040014

    invoke-virtual {v0, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 224
    const v2, 0x1010355

    invoke-virtual {v0, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setIconAttribute(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 225
    invoke-virtual {p0}, Lcom/android/settings/tts/TtsEnginePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c112d

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/settings/tts/TtsEnginePreference;->mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-object v6, v6, Landroid/speech/tts/TextToSpeech$EngineInfo;->label:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 227
    invoke-virtual {v0, v7}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 228
    const v2, 0x104000a

    invoke-virtual {v0, v2, p1}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 229
    const/high16 v2, 0x104

    invoke-virtual {v0, v2, p2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    .line 231
    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertDialog$Builder;->create()Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v1

    .line 232
    .local v1, dialog:Lcom/htc/dialog/HtcAlertDialog;
    invoke-virtual {v1}, Lcom/htc/dialog/HtcAlertDialog;->show()V

    .line 233
    return-void
.end method

.method private makeCurrentEngine(Landroid/widget/Checkable;)V
    .locals 2
    .parameter "current"

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreference;->mSharedState:Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v0}, Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;->getCurrentChecked()Landroid/widget/Checkable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreference;->mSharedState:Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v0}, Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;->getCurrentChecked()Landroid/widget/Checkable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreference;->mSharedState:Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v0, p1}, Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;->setCurrentChecked(Landroid/widget/Checkable;)V

    .line 272
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreference;->mSharedState:Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-virtual {p0}, Lcom/android/settings/tts/TtsEnginePreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;->setCurrentKey(Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreference;->mSharedState:Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v0}, Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;->getCurrentKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/TtsEnginePreference;->callChangeListener(Ljava/lang/Object;)Z

    .line 274
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 275
    return-void
.end method

.method private onRadioButtonClicked(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 238
    iget-boolean v0, p0, Lcom/android/settings/tts/TtsEnginePreference;->mPreventRadioButtonCallbacks:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreference;->mSharedState:Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v0}, Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;->getCurrentChecked()Landroid/widget/Checkable;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    if-eqz p2, :cond_3

    .line 245
    invoke-direct {p0}, Lcom/android/settings/tts/TtsEnginePreference;->shouldDisplayDataAlert()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 246
    new-instance v0, Lcom/android/settings/tts/TtsEnginePreference$4;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/tts/TtsEnginePreference$4;-><init>(Lcom/android/settings/tts/TtsEnginePreference;Landroid/widget/CompoundButton;)V

    new-instance v1, Lcom/android/settings/tts/TtsEnginePreference$5;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/tts/TtsEnginePreference$5;-><init>(Lcom/android/settings/tts/TtsEnginePreference;Landroid/widget/CompoundButton;)V

    invoke-direct {p0, v0, v1}, Lcom/android/settings/tts/TtsEnginePreference;->displayDataAlert(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 260
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/settings/tts/TtsEnginePreference;->makeCurrentEngine(Landroid/widget/Checkable;)V

    goto :goto_0

    .line 263
    :cond_3
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method private replaceWithSesne40Selector(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/android/settings/tts/TtsEnginePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "list_selector_background"

    const v2, 0x1080062

    invoke-static {v0, v1, v2}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 119
    return-void
.end method

.method private shouldDisplayDataAlert()Z
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreference;->mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-boolean v0, v0, Landroid/speech/tts/TextToSpeech$EngineInfo;->system:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 124
    iget-object v6, p0, Lcom/android/settings/tts/TtsEnginePreference;->mSharedState:Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;

    if-nez v6, :cond_0

    .line 125
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Call to getView() before a call tosetSharedState()"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 129
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcPreference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 130
    .local v3, view:Landroid/view/View;
    const v6, 0x7f090109

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 131
    .local v2, rb:Landroid/widget/RadioButton;
    iget-object v6, p0, Lcom/android/settings/tts/TtsEnginePreference;->mRadioChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v2, v6}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/tts/TtsEnginePreference;->getKey()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/tts/TtsEnginePreference;->mSharedState:Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v7}, Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;->getCurrentKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 134
    .local v0, isChecked:Z
    if-eqz v0, :cond_1

    .line 135
    iget-object v6, p0, Lcom/android/settings/tts/TtsEnginePreference;->mSharedState:Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v6, v2}, Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;->setCurrentChecked(Landroid/widget/Checkable;)V

    .line 138
    :cond_1
    iput-boolean v4, p0, Lcom/android/settings/tts/TtsEnginePreference;->mPreventRadioButtonCallbacks:Z

    .line 139
    invoke-virtual {v2, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 140
    iput-boolean v5, p0, Lcom/android/settings/tts/TtsEnginePreference;->mPreventRadioButtonCallbacks:Z

    .line 142
    iput-object v2, p0, Lcom/android/settings/tts/TtsEnginePreference;->mRadioButton:Landroid/widget/RadioButton;

    .line 144
    const v6, 0x7f090107

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 145
    .local v1, layout:Landroid/view/View;
    new-instance v6, Lcom/android/settings/tts/TtsEnginePreference$2;

    invoke-direct {v6, p0, v2}, Lcom/android/settings/tts/TtsEnginePreference$2;-><init>(Lcom/android/settings/tts/TtsEnginePreference;Landroid/widget/RadioButton;)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    const v6, 0x7f090197

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/tts/TtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    .line 161
    iget-object v6, p0, Lcom/android/settings/tts/TtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v7, p0, Lcom/android/settings/tts/TtsEnginePreference;->mVoiceCheckData:Landroid/content/Intent;

    if-eqz v7, :cond_4

    :goto_0
    invoke-virtual {v6, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 162
    if-nez v0, :cond_2

    .line 163
    iget-object v4, p0, Lcom/android/settings/tts/TtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    const v5, 0x3ecccccd

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 165
    :cond_2
    iget-object v4, p0, Lcom/android/settings/tts/TtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    new-instance v5, Lcom/android/settings/tts/TtsEnginePreference$3;

    invoke-direct {v5, p0}, Lcom/android/settings/tts/TtsEnginePreference$3;-><init>(Lcom/android/settings/tts/TtsEnginePreference;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    invoke-direct {p0, v1}, Lcom/android/settings/tts/TtsEnginePreference;->replaceWithSesne40Selector(Landroid/view/View;)V

    .line 187
    iget-object v4, p0, Lcom/android/settings/tts/TtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    invoke-direct {p0, v4}, Lcom/android/settings/tts/TtsEnginePreference;->replaceWithSesne40Selector(Landroid/view/View;)V

    .line 190
    iget-object v4, p0, Lcom/android/settings/tts/TtsEnginePreference;->mVoiceCheckData:Landroid/content/Intent;

    if-eqz v4, :cond_3

    .line 191
    iget-object v4, p0, Lcom/android/settings/tts/TtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    iget-object v5, p0, Lcom/android/settings/tts/TtsEnginePreference;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v5}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 194
    :cond_3
    return-object v3

    :cond_4
    move v4, v5

    .line 161
    goto :goto_0
.end method

.method public setVoiceDataDetails(Landroid/content/Intent;)V
    .locals 2
    .parameter "data"

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/settings/tts/TtsEnginePreference;->mVoiceCheckData:Landroid/content/Intent;

    .line 202
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreference;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreference;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 207
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    const v1, 0x3ecccccd

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method