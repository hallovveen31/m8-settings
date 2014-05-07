.class public Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "AccessibilitySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AccessibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ToggleAccessibilityServicePreferenceFragment"
.end annotation


# static fields
.field private static final DIALOG_ID_DISABLE_WARNING:I = 0x2

.field private static final DIALOG_ID_ENABLE_WARNING:I = 0x1

.field private static final VOICE_DATA_INTEGRITY_CHECK:I = 0x7b9

.field protected static mAvailableVoice:I


# instance fields
.field private mComponentName:Ljava/lang/String;

.field private mDisableWarningMessage:Ljava/lang/CharSequence;

.field private mDisableWarningTitle:Ljava/lang/CharSequence;

.field private mEnableWarningMessage:Ljava/lang/CharSequence;

.field private mEnableWarningTitle:Ljava/lang/CharSequence;

.field private final mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field private mIsFragmentResumed:Z

.field private mOldActivityTitle:Ljava/lang/CharSequence;

.field private mPreferenceKey:Ljava/lang/String;

.field private final mSettingsContentObserver:Lcom/android/settings/AccessibilitySettings$SettingsContentObserver;

.field private mSettingsIntent:Landroid/content/Intent;

.field private mSettingsTitle:Ljava/lang/CharSequence;

.field private mShownDialogId:I

.field private mSummaryPreference:Lcom/htc/preference/HtcPreference;

.field private mToggleSwitch:Lcom/android/settings/AccessibilitySettings$ToggleSwitch;

.field private mTts:Landroid/speech/tts/TextToSpeech;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 723
    const/4 v0, 0x0

    sput v0, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mAvailableVoice:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 680
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    .line 687
    new-instance v0, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$1;-><init>(Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mSettingsContentObserver:Lcom/android/settings/AccessibilitySettings$SettingsContentObserver;

    .line 715
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mIsFragmentResumed:Z

    .line 721
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 730
    new-instance v0, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$2;-><init>(Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;)V

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 680
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mEnableWarningMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 680
    iget-boolean v0, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mIsFragmentResumed:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 680
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 680
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mDisableWarningMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 680
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mComponentName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;)Lcom/android/settings/AccessibilitySettings$ToggleSwitch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 680
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mToggleSwitch:Lcom/android/settings/AccessibilitySettings$ToggleSwitch;

    return-object v0
.end method

.method private installActionBarToggleSwitch()V
    .locals 2

    .prologue
    .line 959
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    #calls: Lcom/android/settings/AccessibilitySettings;->createAndAddActionBarToggleSwitch(Landroid/app/Activity;)Lcom/android/settings/AccessibilitySettings$ToggleSwitch;
    invoke-static {v0}, Lcom/android/settings/AccessibilitySettings;->access$900(Landroid/app/Activity;)Lcom/android/settings/AccessibilitySettings$ToggleSwitch;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mToggleSwitch:Lcom/android/settings/AccessibilitySettings$ToggleSwitch;

    .line 960
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mToggleSwitch:Lcom/android/settings/AccessibilitySettings$ToggleSwitch;

    new-instance v1, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$4;

    invoke-direct {v1, p0}, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$4;-><init>(Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/AccessibilitySettings$ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/AccessibilitySettings$ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 1005
    return-void
.end method

.method private processArguments()V
    .locals 13

    .prologue
    .line 1008
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 1011
    .local v2, arguments:Landroid/os/Bundle;
    const-string v11, "preference_key"

    invoke-virtual {v2, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    .line 1014
    const-string v11, "checked"

    invoke-virtual {v2, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 1015
    .local v3, enabled:Z
    iget-object v11, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mToggleSwitch:Lcom/android/settings/AccessibilitySettings$ToggleSwitch;

    invoke-virtual {v11, v3}, Lcom/android/settings/AccessibilitySettings$ToggleSwitch;->setCheckedInternal(Z)V

    .line 1018
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcPreferenceActivity;

    .line 1019
    .local v1, activity:Lcom/htc/preference/HtcPreferenceActivity;
    invoke-virtual {v1}, Lcom/htc/preference/HtcPreferenceActivity;->onIsMultiPane()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v1}, Lcom/htc/preference/HtcPreferenceActivity;->onIsHidingHeaders()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1020
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mOldActivityTitle:Ljava/lang/CharSequence;

    .line 1021
    const-string v11, "title"

    invoke-virtual {v2, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1022
    .local v10, title:Ljava/lang/String;
    new-instance v4, Lcom/htc/widget/ActionBarExt;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v12

    invoke-direct {v4, v11, v12}, Lcom/htc/widget/ActionBarExt;-><init>(Landroid/app/Activity;Landroid/app/ActionBar;)V

    .line 1024
    .local v4, mActionBarExt:Lcom/htc/widget/ActionBarExt;
    invoke-virtual {v4}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v0

    .line 1025
    .local v0, actionBarContainer:Lcom/htc/widget/ActionBarContainer;
    new-instance v5, Lcom/htc/widget/ActionBarText;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v5, v11}, Lcom/htc/widget/ActionBarText;-><init>(Landroid/content/Context;)V

    .line 1026
    .local v5, mText:Lcom/htc/widget/ActionBarText;
    invoke-virtual {v5, v10}, Lcom/htc/widget/ActionBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 1028
    invoke-virtual {v0, v5}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    .line 1032
    .end local v0           #actionBarContainer:Lcom/htc/widget/ActionBarContainer;
    .end local v4           #mActionBarExt:Lcom/htc/widget/ActionBarExt;
    .end local v5           #mText:Lcom/htc/widget/ActionBarText;
    .end local v10           #title:Ljava/lang/String;
    :cond_1
    const-string v11, "summary"

    invoke-virtual {v2, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1033
    .local v9, summary:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mSummaryPreference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v11, v9}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1036
    const-string v11, "settings_title"

    invoke-virtual {v2, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1037
    .local v8, settingsTitle:Ljava/lang/String;
    const-string v11, "settings_component_name"

    invoke-virtual {v2, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1038
    .local v6, settingsComponentName:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 1039
    new-instance v11, Landroid/content/Intent;

    const-string v12, "android.intent.action.MAIN"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v7

    .line 1041
    .local v7, settingsIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v7, v12}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_2

    .line 1042
    iput-object v8, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mSettingsTitle:Ljava/lang/CharSequence;

    .line 1043
    iput-object v7, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mSettingsIntent:Landroid/content/Intent;

    .line 1044
    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->setHasOptionsMenu(Z)V

    .line 1049
    .end local v7           #settingsIntent:Landroid/content/Intent;
    :cond_2
    const-string v11, "enable_warning_title"

    invoke-virtual {v2, v11}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mEnableWarningTitle:Ljava/lang/CharSequence;

    .line 1053
    const-string v11, "enable_warning_message"

    invoke-virtual {v2, v11}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mEnableWarningMessage:Ljava/lang/CharSequence;

    .line 1057
    const-string v11, "disable_warning_title"

    invoke-virtual {v2, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mDisableWarningTitle:Ljava/lang/CharSequence;

    .line 1061
    const-string v11, "disable_warning_message"

    invoke-virtual {v2, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mDisableWarningMessage:Ljava/lang/CharSequence;

    .line 1065
    const-string v11, "service_component_name"

    invoke-virtual {v2, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mComponentName:Ljava/lang/String;

    .line 1066
    return-void
.end method


# virtual methods
.method protected getParentFragmentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1070
    const-class v0, Lcom/android/settings/AccessibilitySettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getParentFragmentTitleResId()I
    .locals 1

    .prologue
    .line 1075
    const v0, 0x7f0c105b

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 820
    const/16 v1, 0x7b9

    if-ne p1, v1, :cond_0

    .line 821
    if-nez p3, :cond_1

    .line 827
    :cond_0
    :goto_0
    return-void

    .line 823
    :cond_1
    const-string v1, "availableVoices"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 825
    .local v0, available:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sput v1, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mAvailableVoice:I

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 940
    packed-switch p2, :pswitch_data_0

    .line 954
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 942
    :pswitch_0
    iget v2, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    if-ne v2, v0, :cond_0

    .line 943
    .local v0, checked:Z
    :goto_0
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mToggleSwitch:Lcom/android/settings/AccessibilitySettings$ToggleSwitch;

    invoke-virtual {v1, v0}, Lcom/android/settings/AccessibilitySettings$ToggleSwitch;->setCheckedInternal(Z)V

    .line 944
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "checked"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 945
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    .line 956
    :goto_1
    return-void

    .end local v0           #checked:Z
    :cond_0
    move v0, v1

    .line 942
    goto :goto_0

    .line 948
    :pswitch_1
    iget v2, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 949
    .restart local v0       #checked:Z
    :goto_2
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mToggleSwitch:Lcom/android/settings/AccessibilitySettings$ToggleSwitch;

    invoke-virtual {v1, v0}, Lcom/android/settings/AccessibilitySettings$ToggleSwitch;->setCheckedInternal(Z)V

    .line 950
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "checked"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 951
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    goto :goto_1

    .end local v0           #checked:Z
    :cond_1
    move v0, v1

    .line 948
    goto :goto_2

    .line 940
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 755
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 756
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    .line 758
    .local v2, preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;
    invoke-virtual {p0, v2}, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->setPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 759
    new-instance v3, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$3;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$3;-><init>(Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mSummaryPreference:Lcom/htc/preference/HtcPreference;

    .line 798
    iget-object v3, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mSummaryPreference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v3, v5}, Lcom/htc/preference/HtcPreference;->setSelectable(Z)V

    .line 800
    iget-object v3, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mSummaryPreference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v3, v5}, Lcom/htc/preference/HtcPreference;->setPersistent(Z)V

    .line 801
    iget-object v3, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mSummaryPreference:Lcom/htc/preference/HtcPreference;

    const v4, 0x7f040102

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreference;->setLayoutResource(I)V

    .line 802
    iget-object v3, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mSummaryPreference:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 805
    new-instance v3, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {v3, v4, v5}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v3, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 806
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.speech.tts.engine.CHECK_TTS_DATA"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 807
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v3}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 809
    const/16 v3, 0x7b9

    :try_start_0
    invoke-virtual {p0, v1, v3}, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 813
    :goto_0
    return-void

    .line 810
    :catch_0
    move-exception v0

    .line 811
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    const-string v3, "AccessibilitySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to check TTS data, no activity found for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "dialogId"

    .prologue
    const/4 v4, 0x1

    .line 912
    const/4 v1, 0x0

    .line 913
    .local v1, title:Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 914
    .local v0, message:Ljava/lang/CharSequence;
    packed-switch p1, :pswitch_data_0

    .line 926
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 916
    :pswitch_0
    iput v4, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    .line 917
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mEnableWarningTitle:Ljava/lang/CharSequence;

    .line 918
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mEnableWarningMessage:Ljava/lang/CharSequence;

    .line 928
    :goto_0
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {v2, v3, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    invoke-virtual {v2, v3, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    return-object v2

    .line 921
    :pswitch_1
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    .line 922
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mDisableWarningTitle:Ljava/lang/CharSequence;

    .line 923
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mDisableWarningMessage:Ljava/lang/CharSequence;

    .line 924
    goto :goto_0

    .line 914
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 904
    invoke-super {p0, p1, p2}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 905
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mSettingsTitle:Ljava/lang/CharSequence;

    invoke-interface {p1, v1}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 906
    .local v0, menuItem:Landroid/view/MenuItem;
    const/16 v1, 0x8

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 907
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mSettingsIntent:Landroid/content/Intent;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 908
    return-void
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 840
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 841
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mOldActivityTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 842
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mOldActivityTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 844
    :cond_0
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mToggleSwitch:Lcom/android/settings/AccessibilitySettings$ToggleSwitch;

    invoke-virtual {v0, v2}, Lcom/android/settings/AccessibilitySettings$ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/AccessibilitySettings$ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 845
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onDestroyView()V

    .line 846
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 748
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mIsFragmentResumed:Z

    .line 749
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mSettingsContentObserver:Lcom/android/settings/AccessibilitySettings$SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/AccessibilitySettings$SettingsContentObserver;->unregister(Landroid/content/ContentResolver;)V

    .line 750
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onPause()V

    .line 751
    return-void
.end method

.method public onPreferenceToggled(Ljava/lang/String;Z)V
    .locals 12
    .parameter "preferenceKey"
    .parameter "enabled"

    .prologue
    .line 850
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    #calls: Lcom/android/settings/AccessibilitySettings;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;
    invoke-static {v9}, Lcom/android/settings/AccessibilitySettings;->access$700(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v3

    .line 853
    .local v3, enabledServices:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v8

    .line 855
    .local v8, toggledService:Landroid/content/ComponentName;
    if-eqz p2, :cond_1

    .line 857
    const/4 v0, 0x1

    .line 858
    .local v0, accessibilityEnabled:Z
    invoke-interface {v3, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 860
    sget v9, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mAvailableVoice:I

    if-nez v9, :cond_0

    const-string v9, "com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 861
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const v10, 0x7f0c08e6

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 881
    :cond_0
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 885
    .local v4, enabledServicesBuilder:Ljava/lang/StringBuilder;
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 886
    .local v2, enabledService:Landroid/content/ComponentName;
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 887
    const/16 v9, 0x3a

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 866
    .end local v0           #accessibilityEnabled:Z
    .end local v2           #enabledService:Landroid/content/ComponentName;
    .end local v4           #enabledServicesBuilder:Ljava/lang/StringBuilder;
    .end local v6           #i$:Ljava/util/Iterator;
    :cond_1
    const/4 v1, 0x0

    .line 867
    .local v1, enabledAndInstalledServiceCount:I
    invoke-static {}, Lcom/android/settings/AccessibilitySettings;->access$800()Ljava/util/Set;

    move-result-object v7

    .line 868
    .local v7, installedServices:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 869
    .restart local v2       #enabledService:Landroid/content/ComponentName;
    invoke-interface {v7, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 870
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 874
    .end local v2           #enabledService:Landroid/content/ComponentName;
    :cond_3
    const/4 v9, 0x1

    if-gt v1, v9, :cond_4

    const/4 v9, 0x1

    if-ne v1, v9, :cond_5

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    :cond_4
    const/4 v0, 0x1

    .line 877
    .restart local v0       #accessibilityEnabled:Z
    :goto_3
    invoke-interface {v3, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 874
    .end local v0           #accessibilityEnabled:Z
    :cond_5
    const/4 v0, 0x0

    goto :goto_3

    .line 889
    .end local v1           #enabledAndInstalledServiceCount:I
    .end local v7           #installedServices:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    .restart local v0       #accessibilityEnabled:Z
    .restart local v4       #enabledServicesBuilder:Ljava/lang/StringBuilder;
    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    .line 890
    .local v5, enabledServicesBuilderLength:I
    if-lez v5, :cond_7

    .line 891
    add-int/lit8 v9, v5, -0x1

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 893
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "enabled_accessibility_services"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 898
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "accessibility_enabled"

    if-eqz v0, :cond_8

    const/4 v9, 0x1

    :goto_4
    invoke-static {v10, v11, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 900
    return-void

    .line 898
    :cond_8
    const/4 v9, 0x0

    goto :goto_4
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 741
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mIsFragmentResumed:Z

    .line 742
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mSettingsContentObserver:Lcom/android/settings/AccessibilitySettings$SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/AccessibilitySettings$SettingsContentObserver;->register(Landroid/content/ContentResolver;)V

    .line 743
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onResume()V

    .line 744
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 831
    invoke-super {p0, p1, p2}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 832
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->installActionBarToggleSwitch()V

    .line 833
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->processArguments()V

    .line 834
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getHtcListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 835
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getHtcListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setEnabled(Z)V

    .line 836
    return-void
.end method
