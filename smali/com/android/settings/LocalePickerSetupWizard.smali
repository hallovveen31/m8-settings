.class public Lcom/android/settings/LocalePickerSetupWizard;
.super Lcom/htc/widget/setupwizard/HtcWizardActivity;
.source "LocalePickerSetupWizard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/LocalePickerSetupWizard$buttonEmergencyOnClickListener;,
        Lcom/android/settings/LocalePickerSetupWizard$buttonBackOnClickListener;,
        Lcom/android/settings/LocalePickerSetupWizard$buttonNextOnClickListener;
    }
.end annotation


# static fields
.field private static final ACTION_EMERGENCY_DIAL:Ljava/lang/String; = "com.android.phone.EmergencyDialer.DIAL"

.field private static final DIALOG_ID_UPDATING:I = 0x65

.field private static final HANDLER_NEXT_STEP:I = 0x64

.field private static final INTENT_STRING_LAUNCH_BY_ICON:Ljava/lang/String; = "LaunchByIcon"

.field private static final INTENT_STRING_NOT_FINISH_WHEN_BACK_KEY_PRESSED:Ljava/lang/String; = "SelfFinishBackKeyPressed"

.field private static final INTENT_STRING_PHONE_FUNCTION:Ljava/lang/String; = "PhoneFunction"

.field private static final RESULT_BACK_KEY:I = 0x2

.field private static final TAG:Ljava/lang/String; = "OOBE_LocalePickerSetupWizard"

.field private static final THEME_CATEGORY:I


# instance fields
.field private mActionBarDropDown:Lcom/htc/widget/ActionBarDropDown;

.field private mActionBarExt:Lcom/htc/widget/ActionBarExt;

.field private mConfig:Landroid/content/res/Configuration;

.field private mHandler:Landroid/os/Handler;

.field private mHtcThemeId:I

.field private mLaunchByIcon:Z

.field private mLocaleChangeThread:Ljava/lang/Thread;

.field private mLocalePicker:Lcom/android/settings/LocalePickerSetupWizardFragment;

.field private mSelectedLocale:Ljava/util/Locale;

.field private mUpdatingDialog:Lcom/htc/app/HtcProgressDialog;

.field private mbBackFinish:Z

.field private mbIsSubtitleVisible:Z

.field private mbPhoneFunc:Z

.field private mbShowEmergency:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/htc/widget/setupwizard/HtcWizardActivity;-><init>()V

    iput-boolean v0, p0, Lcom/android/settings/LocalePickerSetupWizard;->mbBackFinish:Z

    iput-boolean v0, p0, Lcom/android/settings/LocalePickerSetupWizard;->mLaunchByIcon:Z

    iput-boolean v1, p0, Lcom/android/settings/LocalePickerSetupWizard;->mbPhoneFunc:Z

    iput-object v2, p0, Lcom/android/settings/LocalePickerSetupWizard;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    iput-object v2, p0, Lcom/android/settings/LocalePickerSetupWizard;->mActionBarDropDown:Lcom/htc/widget/ActionBarDropDown;

    iput-boolean v1, p0, Lcom/android/settings/LocalePickerSetupWizard;->mbIsSubtitleVisible:Z

    iput-boolean v0, p0, Lcom/android/settings/LocalePickerSetupWizard;->mbShowEmergency:Z

    iput v0, p0, Lcom/android/settings/LocalePickerSetupWizard;->mHtcThemeId:I

    new-instance v0, Lcom/android/settings/LocalePickerSetupWizard$1;

    invoke-direct {v0, p0}, Lcom/android/settings/LocalePickerSetupWizard$1;-><init>(Lcom/android/settings/LocalePickerSetupWizard;)V

    iput-object v0, p0, Lcom/android/settings/LocalePickerSetupWizard;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/LocalePickerSetupWizard;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/LocalePickerSetupWizard;->startLocaleChangeService()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/LocalePickerSetupWizard;)Lcom/android/settings/LocalePickerSetupWizardFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/LocalePickerSetupWizard;->mLocalePicker:Lcom/android/settings/LocalePickerSetupWizardFragment;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/LocalePickerSetupWizard;)Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/LocalePickerSetupWizard;->mSelectedLocale:Ljava/util/Locale;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/settings/LocalePickerSetupWizard;Ljava/util/Locale;)Ljava/util/Locale;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/LocalePickerSetupWizard;->mSelectedLocale:Ljava/util/Locale;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/settings/LocalePickerSetupWizard;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/LocalePickerSetupWizard;->isVerizon()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings/LocalePickerSetupWizard;)Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/LocalePickerSetupWizard;->mLocaleChangeThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/settings/LocalePickerSetupWizard;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/LocalePickerSetupWizard;->mLocaleChangeThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/settings/LocalePickerSetupWizard;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/LocalePickerSetupWizard;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/LocalePickerSetupWizard;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/LocalePickerSetupWizard;->showEmergencyDial()V

    return-void
.end method

.method private getThemeColor()I
    .locals 4

    const/4 v3, 0x0

    sget-object v2, Lcom/android/settings/R$styleable;->myStylable:[I

    invoke-virtual {p0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return v0
.end method

.method private initialize()V
    .locals 2

    const-string v0, "OOBE_LocalePickerSetupWizard"

    const-string v1, "initialize"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/htc/widget/ActionBarExt;

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/ActionBarExt;-><init>(Landroid/app/Activity;Landroid/app/ActionBar;)V

    iput-object v0, p0, Lcom/android/settings/LocalePickerSetupWizard;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    const v0, 0x7f04009b

    invoke-virtual {p0, v0}, Lcom/htc/widget/setupwizard/HtcWizardActivity;->setSubContentView(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/widget/setupwizard/HtcWizardActivity;->hideProgress(Z)V

    invoke-direct {p0}, Lcom/android/settings/LocalePickerSetupWizard;->setupPhoneLayout()V

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f090149

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/LocalePickerSetupWizardFragment;

    iput-object v0, p0, Lcom/android/settings/LocalePickerSetupWizard;->mLocalePicker:Lcom/android/settings/LocalePickerSetupWizardFragment;

    return-void
.end method

.method private static isLocaleChanged(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z
    .locals 2

    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVerizon()Z
    .locals 1

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isVerizonSku()Z

    move-result v0

    return v0
.end method

.method private setupPhoneLayout()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/settings/LocalePickerSetupWizard;->isVerizon()Z

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/android/settings/LocalePickerSetupWizard;->mbShowEmergency:Z

    if-eqz v1, :cond_2

    const v1, 0x7f0c0085

    invoke-virtual {p0, v1}, Lcom/htc/widget/setupwizard/HtcWizardActivity;->setBackBtnText(I)V

    new-instance v1, Lcom/android/settings/LocalePickerSetupWizard$buttonEmergencyOnClickListener;

    invoke-direct {v1, p0, v2}, Lcom/android/settings/LocalePickerSetupWizard$buttonEmergencyOnClickListener;-><init>(Lcom/android/settings/LocalePickerSetupWizard;Lcom/android/settings/LocalePickerSetupWizard$1;)V

    invoke-virtual {p0, v1}, Lcom/htc/widget/setupwizard/HtcWizardActivity;->setBackBtnOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    invoke-direct {p0}, Lcom/android/settings/LocalePickerSetupWizard;->isVerizon()Z

    move-result v1

    if-eqz v1, :cond_5

    const v1, 0x204025a

    invoke-virtual {p0, v1}, Lcom/htc/widget/setupwizard/HtcWizardActivity;->setNextBtnText(I)V

    :goto_1
    new-instance v1, Lcom/android/settings/LocalePickerSetupWizard$buttonNextOnClickListener;

    invoke-direct {v1, p0, v2}, Lcom/android/settings/LocalePickerSetupWizard$buttonNextOnClickListener;-><init>(Lcom/android/settings/LocalePickerSetupWizard;Lcom/android/settings/LocalePickerSetupWizard$1;)V

    invoke-virtual {p0, v1}, Lcom/htc/widget/setupwizard/HtcWizardActivity;->setNextBtnOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/settings/LocalePickerSetupWizard;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v1}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings/LocalePickerSetupWizard;->isVerizon()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    new-instance v1, Lcom/htc/widget/ActionBarDropDown;

    invoke-direct {v1, p0}, Lcom/htc/widget/ActionBarDropDown;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/LocalePickerSetupWizard;->mActionBarDropDown:Lcom/htc/widget/ActionBarDropDown;

    iget-object v1, p0, Lcom/android/settings/LocalePickerSetupWizard;->mActionBarDropDown:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/settings/LocalePickerSetupWizard;->isVerizon()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0, v0}, Lcom/android/settings/LocalePickerSetupWizard;->setupVzwActionBar(Lcom/htc/widget/ActionBarContainer;)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    iget-boolean v1, p0, Lcom/android/settings/LocalePickerSetupWizard;->mbBackFinish:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0, v3}, Lcom/htc/widget/setupwizard/HtcWizardActivity;->hideBackBtn(Z)V

    goto :goto_0

    :cond_3
    const v1, 0x2040256

    invoke-virtual {p0, v1}, Lcom/htc/widget/setupwizard/HtcWizardActivity;->setBackBtnText(I)V

    new-instance v1, Lcom/android/settings/LocalePickerSetupWizard$buttonBackOnClickListener;

    invoke-direct {v1, p0, v2}, Lcom/android/settings/LocalePickerSetupWizard$buttonBackOnClickListener;-><init>(Lcom/android/settings/LocalePickerSetupWizard;Lcom/android/settings/LocalePickerSetupWizard$1;)V

    invoke-virtual {p0, v1}, Lcom/htc/widget/setupwizard/HtcWizardActivity;->setBackBtnOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v3}, Lcom/htc/widget/setupwizard/HtcWizardActivity;->hideBackBtn(Z)V

    goto :goto_0

    :cond_5
    const v1, 0x2040258

    invoke-virtual {p0, v1}, Lcom/htc/widget/setupwizard/HtcWizardActivity;->setNextBtnText(I)V

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/android/settings/LocalePickerSetupWizard;->mActionBarDropDown:Lcom/htc/widget/ActionBarDropDown;

    const v2, 0x7f0c0394

    invoke-virtual {v1, v2}, Lcom/htc/widget/ActionBarDropDown;->setPrimaryText(I)V

    iget-boolean v1, p0, Lcom/android/settings/LocalePickerSetupWizard;->mbIsSubtitleVisible:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/LocalePickerSetupWizard;->mActionBarDropDown:Lcom/htc/widget/ActionBarDropDown;

    const v2, 0x7f0c0393

    invoke-virtual {v1, v2}, Lcom/htc/widget/ActionBarDropDown;->setSecondaryText(I)V

    goto :goto_2
.end method

.method private setupVzwActionBar(Lcom/htc/widget/ActionBarContainer;)V
    .locals 13

    const/4 v12, -0x2

    const/4 v11, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v9, "com.htc.android.htcsetupwizard"

    const-string v10, "com.htc.android.htcsetupwizard.SetupWizardActivity"

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v3, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_0

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v8, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v7}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x2050001

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v9, 0x3f80

    invoke-direct {v6, v12, v12, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v5, v11, v11, v11}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v4}, Lcom/htc/widget/ActionBarContainer;->addLeftView(Landroid/view/View;)V

    :cond_1
    iget-object v9, p0, Lcom/android/settings/LocalePickerSetupWizard;->mActionBarDropDown:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v9, v1}, Lcom/htc/widget/ActionBarDropDown;->setPrimaryText(Ljava/lang/String;)V

    const v9, 0x7f0c0394

    invoke-virtual {p0, v9}, Lcom/htc/widget/setupwizard/HtcWizardActivity;->setSubTitle(I)V

    return-void
.end method

.method private showEmergencyDial()V
    .locals 7

    const/high16 v6, 0x1080

    const-string v4, "phone"

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v4, "com.android.phone"

    const-string v5, "com.android.phone.InCallScreen"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private startLocaleChangeService()V
    .locals 4

    iget-object v1, p0, Lcom/android/settings/LocalePickerSetupWizard;->mSelectedLocale:Ljava/util/Locale;

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.action.localechange"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "locale"

    iget-object v2, p0, Lcom/android/settings/LocalePickerSetupWizard;->mSelectedLocale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "OOBE_LocalePickerSetupWizard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSelectedLocale: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/LocalePickerSetupWizard;->mSelectedLocale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void

    :cond_0
    const-string v1, "OOBE_LocalePickerSetupWizard"

    const-string v2, "mSelectedLocale = null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/LocalePickerSetupWizard;->isVerizon()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/LocalePickerSetupWizard;->mConfig:Landroid/content/res/Configuration;

    invoke-static {p1, v0}, Lcom/android/settings/LocalePickerSetupWizard;->isLocaleChanged(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OOBE_LocalePickerSetupWizard"

    const-string v1, "isLocaleChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/LocalePickerSetupWizard;->setupPhoneLayout()V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lcom/android/settings/LocalePickerSetupWizard;->mConfig:Landroid/content/res/Configuration;

    :goto_0
    return-void

    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14

    const/4 v13, 0x1

    const/4 v12, 0x0

    const-string v9, "OOBE_LocalePickerSetupWizard"

    const-string v10, "onCreate"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v12}, Lcom/htc/configuration/HtcWrapConfiguration;->getHtcThemeId(Landroid/content/Context;I)I

    move-result v9

    iput v9, p0, Lcom/android/settings/LocalePickerSetupWizard;->mHtcThemeId:I

    iget v9, p0, Lcom/android/settings/LocalePickerSetupWizard;->mHtcThemeId:I

    invoke-virtual {p0, v9}, Landroid/view/ContextThemeWrapper;->setTheme(I)V

    invoke-super {p0, p1}, Lcom/htc/widget/setupwizard/HtcWizardActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/high16 v10, 0x400

    invoke-virtual {v9, v10}, Landroid/view/Window;->addFlags(I)V

    const v9, 0x1020002

    invoke-virtual {p0, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v8, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcOverlapLayout;

    invoke-virtual {v5, v13}, Lcom/htc/widget/HtcOverlapLayout;->isActionBarVisible(Z)V

    invoke-virtual {v5, v13}, Lcom/htc/widget/HtcOverlapLayout;->setInsetStatusBar(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v9

    new-instance v10, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p0}, Lcom/android/settings/LocalePickerSetupWizard;->getThemeColor()I

    move-result v11

    invoke-direct {v10, v11}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v9, v10}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/android/settings/LocalePickerSetupWizard;->isVerizon()Z

    move-result v9

    if-eqz v9, :cond_0

    new-instance v9, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v9, p0, Lcom/android/settings/LocalePickerSetupWizard;->mConfig:Landroid/content/res/Configuration;

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v9, "SelfFinishBackKeyPressed"

    invoke-virtual {v3, v9, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/settings/LocalePickerSetupWizard;->mbBackFinish:Z

    const-string v9, "LaunchByIcon"

    invoke-virtual {v3, v9, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/settings/LocalePickerSetupWizard;->mLaunchByIcon:Z

    const-string v9, "PhoneFunction"

    invoke-virtual {v3, v9, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/settings/LocalePickerSetupWizard;->mbPhoneFunc:Z

    const-string v9, "OOBE_LocalePickerSetupWizard"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mLaunchByIcon = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/settings/LocalePickerSetupWizard;->mLaunchByIcon:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mbBackFinish = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/settings/LocalePickerSetupWizard;->mbBackFinish:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-boolean v9, p0, Lcom/android/settings/LocalePickerSetupWizard;->mbPhoneFunc:Z

    if-eqz v9, :cond_2

    invoke-direct {p0}, Lcom/android/settings/LocalePickerSetupWizard;->isVerizon()Z

    move-result v9

    if-eqz v9, :cond_2

    iput-boolean v13, p0, Lcom/android/settings/LocalePickerSetupWizard;->mbShowEmergency:Z

    :cond_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v4, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const-string v9, "OOBE_LocalePickerSetupWizard"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "language = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/settings/LocalePickerSetupWizard;->mbIsSubtitleVisible:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    iget-boolean v9, p0, Lcom/android/settings/LocalePickerSetupWizard;->mbIsSubtitleVisible:Z

    if-eqz v9, :cond_4

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0394

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0393

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v7, :cond_4

    if-eqz v6, :cond_4

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const-string v9, "OOBE_LocalePickerSetupWizard"

    const-string v10, "same titles"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v12, p0, Lcom/android/settings/LocalePickerSetupWizard;->mbIsSubtitleVisible:Z

    :cond_4
    invoke-direct {p0}, Lcom/android/settings/LocalePickerSetupWizard;->initialize()V

    return-void

    :catch_0
    move-exception v2

    const-string v9, "OOBE_LocalePickerSetupWizard"

    const-string v10, "am.getConfiguration"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/LocalePickerSetupWizard;->mUpdatingDialog:Lcom/htc/app/HtcProgressDialog;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v0, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/LocalePickerSetupWizard;->mUpdatingDialog:Lcom/htc/app/HtcProgressDialog;

    iget-object v0, p0, Lcom/android/settings/LocalePickerSetupWizard;->mUpdatingDialog:Lcom/htc/app/HtcProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/android/settings/LocalePickerSetupWizard;->mUpdatingDialog:Lcom/htc/app/HtcProgressDialog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x2040280

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2026

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/LocalePickerSetupWizard;->mUpdatingDialog:Lcom/htc/app/HtcProgressDialog;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "OOBE_LocalePickerSetupWizard"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Landroid/app/Activity;->removeDialog(I)V

    invoke-super {p0}, Lcom/htc/widget/setupwizard/HtcWizardActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    const/4 v5, 0x2

    const/4 v1, 0x1

    const-string v2, "OOBE_LocalePickerSetupWizard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/htc/widget/setupwizard/HtcWizardActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :cond_0
    :goto_0
    :sswitch_0
    return v1

    :sswitch_1
    iget-boolean v2, p0, Lcom/android/settings/LocalePickerSetupWizard;->mbBackFinish:Z

    if-nez v2, :cond_1

    invoke-virtual {p0, v5}, Landroid/app/Activity;->setResult(I)V

    invoke-super {p0, p1, p2}, Lcom/htc/widget/setupwizard/HtcWizardActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    :cond_1
    iget-boolean v2, p0, Lcom/android/settings/LocalePickerSetupWizard;->mLaunchByIcon:Z

    if-ne v2, v1, :cond_0

    invoke-virtual {p0, v5}, Landroid/app/Activity;->setResult(I)V

    invoke-super {p0, p1, p2}, Lcom/htc/widget/setupwizard/HtcWizardActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    :sswitch_2
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-ne v2, v1, :cond_2

    invoke-direct {p0}, Lcom/android/settings/LocalePickerSetupWizard;->showEmergencyDial()V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/htc/widget/setupwizard/HtcWizardActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x5 -> :sswitch_2
        0x52 -> :sswitch_0
        0x54 -> :sswitch_0
    .end sparse-switch
.end method

.method public onResume()V
    .locals 2

    const-string v0, "OOBE_LocalePickerSetupWizard"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/htc/widget/setupwizard/HtcWizardActivity;->onResume()V

    iget v0, p0, Lcom/android/settings/LocalePickerSetupWizard;->mHtcThemeId:I

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/htc/configuration/HtcWrapConfiguration;->getHtcThemeId(Landroid/content/Context;I)I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/settings/LocalePickerSetupWizard$2;

    invoke-direct {v1, p0}, Lcom/android/settings/LocalePickerSetupWizard$2;-><init>(Lcom/android/settings/LocalePickerSetupWizard;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
