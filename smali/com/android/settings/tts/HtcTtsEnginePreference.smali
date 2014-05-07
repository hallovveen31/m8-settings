.class public Lcom/android/settings/tts/HtcTtsEnginePreference;
.super Lcom/htc/preference/HtcPreference;
.source "HtcTtsEnginePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/tts/HtcTtsEnginePreference$RadioButtonGroupState;
    }
.end annotation


# static fields
.field static final FRAGMENT_ARGS_LABEL:Ljava/lang/String; = "label"

.field static final FRAGMENT_ARGS_NAME:Ljava/lang/String; = "name"

.field static final FRAGMENT_ARGS_VOICES:Ljava/lang/String; = "voices"

.field private static final TAG:Ljava/lang/String; = "TtsEnginePreference"


# instance fields
.field private final mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

.field private mListItemHeight:I

.field private final mPreferenceActivity:Lcom/htc/preference/HtcPreferenceActivity;

.field private volatile mPreventRadioButtonCallbacks:Z

.field private mRadioButton:Lcom/htc/widget/HtcRadioButton;

.field private final mRadioChangeListener:Lcom/htc/widget/HtcCompoundButton$OnCheckedChangeListener;

.field private mSettingsIcon:Landroid/view/View;

.field private final mSharedState:Lcom/android/settings/tts/HtcTtsEnginePreference$RadioButtonGroupState;

.field private mVoiceCheckData:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$EngineInfo;Lcom/android/settings/tts/HtcTtsEnginePreference$RadioButtonGroupState;Lcom/htc/preference/HtcPreferenceActivity;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    iput v1, p0, Lcom/android/settings/tts/HtcTtsEnginePreference;->mListItemHeight:I

    new-instance v0, Lcom/android/settings/tts/HtcTtsEnginePreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/tts/HtcTtsEnginePreference$1;-><init>(Lcom/android/settings/tts/HtcTtsEnginePreference;)V

    iput-object v0, p0, Lcom/android/settings/tts/HtcTtsEnginePreference;->mRadioChangeListener:Lcom/htc/widget/HtcCompoundButton$OnCheckedChangeListener;

    const v0, 0x7f040090

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreference;->setLayoutResource(I)V

    iput-object p3, p0, Lcom/android/settings/tts/HtcTtsEnginePreference;->mSharedState:Lcom/android/settings/tts/HtcTtsEnginePreference$RadioButtonGroupState;

    iput-object p4, p0, Lcom/android/settings/tts/HtcTtsEnginePreference;->mPreferenceActivity:Lcom/htc/preference/HtcPreferenceActivity;

    iput-object p2, p0, Lcom/android/settings/tts/HtcTtsEnginePreference;->mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

    iput-boolean v1, p0, Lcom/android/settings/tts/HtcTtsEnginePreference;->mPreventRadioButtonCallbacks:Z

    iget-object v0, p0, Lcom/android/settings/tts/HtcTtsEnginePreference;->mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-object v0, v0, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreference;->setKey(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/tts/HtcTtsEnginePreference;->mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-object v0, v0, Landroid/speech/tts/TextToSpeech$EngineInfo;->label:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreference;->setTitle(Ljava/lang/CharSequence;)V

    const-string v0, "HtcListItemHeight"

    invoke-static {p1, v0}, Lcom/htc/widget/HtcProperty;->getProperty(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/settings/tts/HtcTtsEnginePreference;->mListItemHeight:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/tts/HtcTtsEnginePreference;Lcom/htc/widget/HtcCompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/tts/HtcTtsEnginePreference;->onRadioButtonClicked(Lcom/htc/widget/HtcCompoundButton;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/tts/HtcTtsEnginePreference;)Landroid/speech/tts/TextToSpeech$EngineInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/tts/HtcTtsEnginePreference;->mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/tts/HtcTtsEnginePreference;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/tts/HtcTtsEnginePreference;->mVoiceCheckData:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/tts/HtcTtsEnginePreference;)Lcom/htc/preference/HtcPreferenceActivity;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/tts/HtcTtsEnginePreference;->mPreferenceActivity:Lcom/htc/preference/HtcPreferenceActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/tts/HtcTtsEnginePreference;Landroid/widget/Checkable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/tts/HtcTtsEnginePreference;->makeCurrentEngine(Landroid/widget/Checkable;)V

    return-void
.end method

.method private displayDataAlert(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 8

    const/4 v7, 0x1

    const-string v2, "TtsEnginePreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Displaying data alert for :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/tts/HtcTtsEnginePreference;->mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-object v4, v4, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/htc/dialog/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1040014

    invoke-virtual {v0, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    const v2, 0x1010355

    invoke-virtual {v0, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setIconAttribute(I)Lcom/htc/dialog/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c112d

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/settings/tts/HtcTtsEnginePreference;->mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-object v6, v6, Landroid/speech/tts/TextToSpeech$EngineInfo;->label:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    invoke-virtual {v0, v7}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/dialog/HtcAlertDialog$Builder;

    const v2, 0x104000a

    invoke-virtual {v0, v2, p1}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    const/high16 v2, 0x104

    invoke-virtual {v0, v2, p2}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/htc/dialog/HtcAlertDialog$Builder;->create()Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private makeCurrentEngine(Landroid/widget/Checkable;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/tts/HtcTtsEnginePreference;->mSharedState:Lcom/android/settings/tts/HtcTtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v0}, Lcom/android/settings/tts/HtcTtsEnginePreference$RadioButtonGroupState;->getCurrentChecked()Landroid/widget/Checkable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/tts/HtcTtsEnginePreference;->mSharedState:Lcom/android/settings/tts/HtcTtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v0}, Lcom/android/settings/tts/HtcTtsEnginePreference$RadioButtonGroupState;->getCurrentChecked()Landroid/widget/Checkable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/tts/HtcTtsEnginePreference;->mSharedState:Lcom/android/settings/tts/HtcTtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v0, p1}, Lcom/android/settings/tts/HtcTtsEnginePreference$RadioButtonGroupState;->setCurrentChecked(Landroid/widget/Checkable;)V

    iget-object v0, p0, Lcom/android/settings/tts/HtcTtsEnginePreference;->mSharedState:Lcom/android/settings/tts/HtcTtsEnginePreference$RadioButtonGroupState;

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/settings/tts/HtcTtsEnginePreference$RadioButtonGroupState;->setCurrentKey(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/tts/HtcTtsEnginePreference;->mSharedState:Lcom/android/settings/tts/HtcTtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v0}, Lcom/android/settings/tts/HtcTtsEnginePreference$RadioButtonGroupState;->getCurrentKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreference;->callChangeListener(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/tts/HtcTtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method private onRadioButtonClicked(Lcom/htc/widget/HtcCompoundButton;Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/settings/tts/HtcTtsEnginePreference;->mPreventRadioButtonCallbacks:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/tts/HtcTtsEnginePreference;->mSharedState:Lcom/android/settings/tts/HtcTtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v0}, Lcom/android/settings/tts/HtcTtsEnginePreference$RadioButtonGroupState;->getCurrentChecked()Landroid/widget/Checkable;

    move-result-object v0

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_3

    invoke-direct {p0}, Lcom/android/settings/tts/HtcTtsEnginePreference;->shouldDisplayDataAlert()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/settings/tts/HtcTtsEnginePreference$3;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/tts/HtcTtsEnginePreference$3;-><init>(Lcom/android/settings/tts/HtcTtsEnginePreference;Lcom/htc/widget/HtcCompoundButton;)V

    new-instance v1, Lcom/android/settings/tts/HtcTtsEnginePreference$4;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/tts/HtcTtsEnginePreference$4;-><init>(Lcom/android/settings/tts/HtcTtsEnginePreference;Lcom/htc/widget/HtcCompoundButton;)V

    invoke-direct {p0, v0, v1}, Lcom/android/settings/tts/HtcTtsEnginePreference;->displayDataAlert(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/settings/tts/HtcTtsEnginePreference;->makeCurrentEngine(Landroid/widget/Checkable;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/settings/tts/HtcTtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method private shouldDisplayDataAlert()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/tts/HtcTtsEnginePreference;->mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

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
    .locals 10

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/android/settings/tts/HtcTtsEnginePreference;->mSharedState:Lcom/android/settings/tts/HtcTtsEnginePreference$RadioButtonGroupState;

    if-nez v6, :cond_0

    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Call to getView() before a call tosetSharedState()"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/htc/preference/HtcPreference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f090109

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcRadioButton;

    iget-object v6, p0, Lcom/android/settings/tts/HtcTtsEnginePreference;->mRadioChangeListener:Lcom/htc/widget/HtcCompoundButton$OnCheckedChangeListener;

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcCompoundButton;->setOnCheckedChangeListener(Lcom/htc/widget/HtcCompoundButton$OnCheckedChangeListener;)V

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v9, "window"

    invoke-virtual {v6, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v4, v2, Landroid/graphics/Point;->x:I

    iget v6, v2, Landroid/graphics/Point;->x:I

    iget v9, v2, Landroid/graphics/Point;->y:I

    if-le v6, v9, :cond_1

    iget v4, v2, Landroid/graphics/Point;->y:I

    :cond_1
    invoke-virtual {v3}, Lcom/htc/widget/HtcCompoundButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    int-to-float v6, v4

    const v9, 0x3e16872b

    mul-float/2addr v6, v9

    float-to-int v6, v6

    iput v6, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v6, p0, Lcom/android/settings/tts/HtcTtsEnginePreference;->mListItemHeight:I

    iput v6, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v6

    iget-object v9, p0, Lcom/android/settings/tts/HtcTtsEnginePreference;->mSharedState:Lcom/android/settings/tts/HtcTtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v9}, Lcom/android/settings/tts/HtcTtsEnginePreference$RadioButtonGroupState;->getCurrentKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v6, p0, Lcom/android/settings/tts/HtcTtsEnginePreference;->mSharedState:Lcom/android/settings/tts/HtcTtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v6, v3}, Lcom/android/settings/tts/HtcTtsEnginePreference$RadioButtonGroupState;->setCurrentChecked(Landroid/widget/Checkable;)V

    :cond_2
    iput-boolean v7, p0, Lcom/android/settings/tts/HtcTtsEnginePreference;->mPreventRadioButtonCallbacks:Z

    invoke-virtual {v3, v0}, Lcom/htc/widget/HtcCompoundButton;->setChecked(Z)V

    iput-boolean v8, p0, Lcom/android/settings/tts/HtcTtsEnginePreference;->mPreventRadioButtonCallbacks:Z

    iput-object v3, p0, Lcom/android/settings/tts/HtcTtsEnginePreference;->mRadioButton:Lcom/htc/widget/HtcRadioButton;

    const v6, 0x7f090107

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/tts/HtcTtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    iget-object v9, p0, Lcom/android/settings/tts/HtcTtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v6, p0, Lcom/android/settings/tts/HtcTtsEnginePreference;->mVoiceCheckData:Landroid/content/Intent;

    if-eqz v6, :cond_5

    move v6, v7

    :goto_0
    invoke-virtual {v9, v6}, Landroid/view/View;->setEnabled(Z)V

    if-nez v0, :cond_3

    iget-object v6, p0, Lcom/android/settings/tts/HtcTtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    const v7, 0x3ecccccd

    invoke-virtual {v6, v7}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    iget-object v6, p0, Lcom/android/settings/tts/HtcTtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    new-instance v7, Lcom/android/settings/tts/HtcTtsEnginePreference$2;

    invoke-direct {v7, p0}, Lcom/android/settings/tts/HtcTtsEnginePreference$2;-><init>(Lcom/android/settings/tts/HtcTtsEnginePreference;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, p0, Lcom/android/settings/tts/HtcTtsEnginePreference;->mVoiceCheckData:Landroid/content/Intent;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/settings/tts/HtcTtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    iget-object v7, p0, Lcom/android/settings/tts/HtcTtsEnginePreference;->mRadioButton:Lcom/htc/widget/HtcRadioButton;

    invoke-virtual {v7}, Lcom/htc/widget/HtcCompoundButton;->isChecked()Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setEnabled(Z)V

    :cond_4
    return-object v5

    :cond_5
    move v6, v8

    goto :goto_0
.end method

.method public setVoiceDataDetails(Landroid/content/Intent;)V
    .locals 2

    iput-object p1, p0, Lcom/android/settings/tts/HtcTtsEnginePreference;->mVoiceCheckData:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/tts/HtcTtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/tts/HtcTtsEnginePreference;->mRadioButton:Lcom/htc/widget/HtcRadioButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/tts/HtcTtsEnginePreference;->mRadioButton:Lcom/htc/widget/HtcRadioButton;

    invoke-virtual {v0}, Lcom/htc/widget/HtcCompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/tts/HtcTtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/tts/HtcTtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/tts/HtcTtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    const v1, 0x3ecccccd

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method
