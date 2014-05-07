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

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Lcom/htc/widget/setupwizard/HtcWizardActivity;-><init>()V

    .line 66
    iput-boolean v0, p0, Lcom/android/settings/LocalePickerSetupWizard;->mbBackFinish:Z

    .line 67
    iput-boolean v0, p0, Lcom/android/settings/LocalePickerSetupWizard;->mLaunchByIcon:Z

    .line 68
    iput-boolean v1, p0, Lcom/android/settings/LocalePickerSetupWizard;->mbPhoneFunc:Z

    .line 76
    iput-object v2, p0, Lcom/android/settings/LocalePickerSetupWizard;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    .line 77
    iput-object v2, p0, Lcom/android/settings/LocalePickerSetupWizard;->mActionBarDropDown:Lcom/htc/widget/ActionBarDropDown;

    .line 78
    iput-boolean v1, p0, Lcom/android/settings/LocalePickerSetupWizard;->mbIsSubtitleVisible:Z

    .line 79
    iput-boolean v0, p0, Lcom/android/settings/LocalePickerSetupWizard;->mbShowEmergency:Z

    .line 84
    iput v0, p0, Lcom/android/settings/LocalePickerSetupWizard;->mHtcThemeId:I

    .line 268
    new-instance v0, Lcom/android/settings/LocalePickerSetupWizard$1;

    invoke-direct {v0, p0}, Lcom/android/settings/LocalePickerSetupWizard$1;-><init>(Lcom/android/settings/LocalePickerSetupWizard;)V

    iput-object v0, p0, Lcom/android/settings/LocalePickerSetupWizard;->mHandler:Landroid/os/Handler;

    .line 360
    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/LocalePickerSetupWizard;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/settings/LocalePickerSetupWizard;->startLocaleChangeService()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/LocalePickerSetupWizard;)Lcom/android/settings/LocalePickerSetupWizardFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/LocalePickerSetupWizard;->mLocalePicker:Lcom/android/settings/LocalePickerSetupWizardFragment;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/LocalePickerSetupWizard;)Ljava/util/Locale;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/LocalePickerSetupWizard;->mSelectedLocale:Ljava/util/Locale;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/settings/LocalePickerSetupWizard;Ljava/util/Locale;)Ljava/util/Locale;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/settings/LocalePickerSetupWizard;->mSelectedLocale:Ljava/util/Locale;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/settings/LocalePickerSetupWizard;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/settings/LocalePickerSetupWizard;->isVerizon()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings/LocalePickerSetupWizard;)Ljava/lang/Thread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/LocalePickerSetupWizard;->mLocaleChangeThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/settings/LocalePickerSetupWizard;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/settings/LocalePickerSetupWizard;->mLocaleChangeThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/settings/LocalePickerSetupWizard;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/LocalePickerSetupWizard;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/LocalePickerSetupWizard;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/settings/LocalePickerSetupWizard;->showEmergencyDial()V

    return-void
.end method

.method private getThemeColor()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 463
    sget-object v2, Lcom/android/settings/R$styleable;->myStylable:[I

    invoke-virtual {p0, v2}, Lcom/android/settings/LocalePickerSetupWizard;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 464
    .local v1, ta:Landroid/content/res/TypedArray;
    invoke-virtual {v1, v3, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 465
    .local v0, color:I
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 466
    return v0
.end method

.method private initialize()V
    .locals 2

    .prologue
    .line 176
    const-string v0, "OOBE_LocalePickerSetupWizard"

    const-string v1, "initialize"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    new-instance v0, Lcom/htc/widget/ActionBarExt;

    invoke-virtual {p0}, Lcom/android/settings/LocalePickerSetupWizard;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/ActionBarExt;-><init>(Landroid/app/Activity;Landroid/app/ActionBar;)V

    iput-object v0, p0, Lcom/android/settings/LocalePickerSetupWizard;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    .line 179
    const v0, 0x7f04009b

    invoke-virtual {p0, v0}, Lcom/android/settings/LocalePickerSetupWizard;->setSubContentView(I)V

    .line 180
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/LocalePickerSetupWizard;->hideProgress(Z)V

    .line 182
    invoke-direct {p0}, Lcom/android/settings/LocalePickerSetupWizard;->setupPhoneLayout()V

    .line 184
    invoke-virtual {p0}, Lcom/android/settings/LocalePickerSetupWizard;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f090149

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/LocalePickerSetupWizardFragment;

    iput-object v0, p0, Lcom/android/settings/LocalePickerSetupWizard;->mLocalePicker:Lcom/android/settings/LocalePickerSetupWizardFragment;

    .line 185
    return-void
.end method

.method private static isLocaleChanged(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z
    .locals 2
    .parameter "newConfig"
    .parameter "oldConfig"

    .prologue
    .line 171
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

    .prologue
    .line 459
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isVerizonSku()Z

    move-result v0

    return v0
.end method

.method private setupPhoneLayout()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 225
    invoke-direct {p0}, Lcom/android/settings/LocalePickerSetupWizard;->isVerizon()Z

    move-result v1

    if-nez v1, :cond_4

    .line 226
    iget-boolean v1, p0, Lcom/android/settings/LocalePickerSetupWizard;->mbShowEmergency:Z

    if-eqz v1, :cond_2

    .line 227
    const v1, 0x7f0c0085

    invoke-virtual {p0, v1}, Lcom/android/settings/LocalePickerSetupWizard;->setBackBtnText(I)V

    .line 228
    new-instance v1, Lcom/android/settings/LocalePickerSetupWizard$buttonEmergencyOnClickListener;

    invoke-direct {v1, p0, v2}, Lcom/android/settings/LocalePickerSetupWizard$buttonEmergencyOnClickListener;-><init>(Lcom/android/settings/LocalePickerSetupWizard;Lcom/android/settings/LocalePickerSetupWizard$1;)V

    invoke-virtual {p0, v1}, Lcom/android/settings/LocalePickerSetupWizard;->setBackBtnOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/LocalePickerSetupWizard;->isVerizon()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 243
    const v1, 0x204025a

    invoke-virtual {p0, v1}, Lcom/android/settings/LocalePickerSetupWizard;->setNextBtnText(I)V

    .line 248
    :goto_1
    new-instance v1, Lcom/android/settings/LocalePickerSetupWizard$buttonNextOnClickListener;

    invoke-direct {v1, p0, v2}, Lcom/android/settings/LocalePickerSetupWizard$buttonNextOnClickListener;-><init>(Lcom/android/settings/LocalePickerSetupWizard;Lcom/android/settings/LocalePickerSetupWizard$1;)V

    invoke-virtual {p0, v1}, Lcom/android/settings/LocalePickerSetupWizard;->setNextBtnOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    iget-object v1, p0, Lcom/android/settings/LocalePickerSetupWizard;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v1}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v0

    .line 251
    .local v0, actionBarContainer:Lcom/htc/widget/ActionBarContainer;
    invoke-direct {p0}, Lcom/android/settings/LocalePickerSetupWizard;->isVerizon()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 252
    invoke-virtual {v0}, Lcom/htc/widget/ActionBarContainer;->removeAllViews()V

    .line 254
    :cond_0
    new-instance v1, Lcom/htc/widget/ActionBarDropDown;

    invoke-direct {v1, p0}, Lcom/htc/widget/ActionBarDropDown;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/LocalePickerSetupWizard;->mActionBarDropDown:Lcom/htc/widget/ActionBarDropDown;

    .line 255
    iget-object v1, p0, Lcom/android/settings/LocalePickerSetupWizard;->mActionBarDropDown:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    .line 257
    invoke-direct {p0}, Lcom/android/settings/LocalePickerSetupWizard;->isVerizon()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 258
    invoke-direct {p0, v0}, Lcom/android/settings/LocalePickerSetupWizard;->setupVzwActionBar(Lcom/htc/widget/ActionBarContainer;)V

    .line 266
    :cond_1
    :goto_2
    return-void

    .line 230
    .end local v0           #actionBarContainer:Lcom/htc/widget/ActionBarContainer;
    :cond_2
    iget-boolean v1, p0, Lcom/android/settings/LocalePickerSetupWizard;->mbBackFinish:Z

    if-eqz v1, :cond_3

    .line 231
    invoke-virtual {p0, v3}, Lcom/android/settings/LocalePickerSetupWizard;->hideBackBtn(Z)V

    goto :goto_0

    .line 234
    :cond_3
    const v1, 0x2040256

    invoke-virtual {p0, v1}, Lcom/android/settings/LocalePickerSetupWizard;->setBackBtnText(I)V

    .line 235
    new-instance v1, Lcom/android/settings/LocalePickerSetupWizard$buttonBackOnClickListener;

    invoke-direct {v1, p0, v2}, Lcom/android/settings/LocalePickerSetupWizard$buttonBackOnClickListener;-><init>(Lcom/android/settings/LocalePickerSetupWizard;Lcom/android/settings/LocalePickerSetupWizard$1;)V

    invoke-virtual {p0, v1}, Lcom/android/settings/LocalePickerSetupWizard;->setBackBtnOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 238
    :cond_4
    invoke-virtual {p0, v3}, Lcom/android/settings/LocalePickerSetupWizard;->hideBackBtn(Z)V

    goto :goto_0

    .line 246
    :cond_5
    const v1, 0x2040258

    invoke-virtual {p0, v1}, Lcom/android/settings/LocalePickerSetupWizard;->setNextBtnText(I)V

    goto :goto_1

    .line 261
    .restart local v0       #actionBarContainer:Lcom/htc/widget/ActionBarContainer;
    :cond_6
    iget-object v1, p0, Lcom/android/settings/LocalePickerSetupWizard;->mActionBarDropDown:Lcom/htc/widget/ActionBarDropDown;

    const v2, 0x7f0c0394

    invoke-virtual {v1, v2}, Lcom/htc/widget/ActionBarDropDown;->setPrimaryText(I)V

    .line 262
    iget-boolean v1, p0, Lcom/android/settings/LocalePickerSetupWizard;->mbIsSubtitleVisible:Z

    if-eqz v1, :cond_1

    .line 263
    iget-object v1, p0, Lcom/android/settings/LocalePickerSetupWizard;->mActionBarDropDown:Lcom/htc/widget/ActionBarDropDown;

    const v2, 0x7f0c0393

    invoke-virtual {v1, v2}, Lcom/htc/widget/ActionBarDropDown;->setSecondaryText(I)V

    goto :goto_2
.end method

.method private setupVzwActionBar(Lcom/htc/widget/ActionBarContainer;)V
    .locals 13
    .parameter "actionBarContainer"

    .prologue
    const/4 v12, -0x2

    const/4 v11, 0x0

    .line 189
    const/4 v1, 0x0

    .line 190
    .local v1, actionBarTitle:Ljava/lang/String;
    const/4 v0, 0x0

    .line 192
    .local v0, actionBarIcon:Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .line 193
    .local v2, activityList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 194
    .local v3, intent:Landroid/content/Intent;
    const-string v9, "com.htc.android.htcsetupwizard"

    const-string v10, "com.htc.android.htcsetupwizard.SetupWizardActivity"

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/LocalePickerSetupWizard;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 196
    .local v7, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v7, v3, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 197
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_0

    .line 198
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 199
    .local v8, resolveInfo:Landroid/content/pm/ResolveInfo;
    invoke-virtual {v8, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 200
    invoke-virtual {v8, v7}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 204
    .end local v8           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_0
    if-eqz v0, :cond_1

    .line 205
    invoke-virtual {p0}, Lcom/android/settings/LocalePickerSetupWizard;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x2050001

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 206
    .local v5, padding:I
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v9, 0x3f80

    invoke-direct {v6, v12, v12, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 209
    .local v6, params:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 210
    .local v4, iv:Landroid/widget/ImageView;
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    invoke-virtual {v4, v5, v11, v11, v11}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 212
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 213
    invoke-virtual {p1, v4}, Lcom/htc/widget/ActionBarContainer;->addLeftView(Landroid/view/View;)V

    .line 217
    .end local v4           #iv:Landroid/widget/ImageView;
    .end local v5           #padding:I
    .end local v6           #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    iget-object v9, p0, Lcom/android/settings/LocalePickerSetupWizard;->mActionBarDropDown:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v9, v1}, Lcom/htc/widget/ActionBarDropDown;->setPrimaryText(Ljava/lang/String;)V

    .line 219
    const v9, 0x7f0c0394

    invoke-virtual {p0, v9}, Lcom/android/settings/LocalePickerSetupWizard;->setSubTitle(I)V

    .line 220
    return-void
.end method

.method private showEmergencyDial()V
    .locals 7

    .prologue
    const/high16 v6, 0x1080

    .line 426
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Lcom/android/settings/LocalePickerSetupWizard;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 427
    .local v3, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    .line 428
    .local v0, callState:I
    if-nez v0, :cond_0

    .line 429
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 430
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 432
    invoke-virtual {p0, v2}, Lcom/android/settings/LocalePickerSetupWizard;->startActivity(Landroid/content/Intent;)V

    .line 440
    .end local v2           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 434
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 435
    .local v1, inCallIntent:Landroid/content/Intent;
    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 437
    const-string v4, "com.android.phone"

    const-string v5, "com.android.phone.InCallScreen"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 438
    invoke-virtual {p0, v1}, Lcom/android/settings/LocalePickerSetupWizard;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private startLocaleChangeService()V
    .locals 4

    .prologue
    .line 341
    iget-object v1, p0, Lcom/android/settings/LocalePickerSetupWizard;->mSelectedLocale:Ljava/util/Locale;

    if-eqz v1, :cond_0

    .line 342
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.action.localechange"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 343
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "locale"

    iget-object v2, p0, Lcom/android/settings/LocalePickerSetupWizard;->mSelectedLocale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 344
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

    .line 345
    invoke-virtual {p0, v0}, Lcom/android/settings/LocalePickerSetupWizard;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 350
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 348
    :cond_0
    const-string v1, "OOBE_LocalePickerSetupWizard"

    const-string v2, "mSelectedLocale = null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/android/settings/LocalePickerSetupWizard;->isVerizon()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/android/settings/LocalePickerSetupWizard;->mConfig:Landroid/content/res/Configuration;

    invoke-static {p1, v0}, Lcom/android/settings/LocalePickerSetupWizard;->isLocaleChanged(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    const-string v0, "OOBE_LocalePickerSetupWizard"

    const-string v1, "isLocaleChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-direct {p0}, Lcom/android/settings/LocalePickerSetupWizard;->setupPhoneLayout()V

    .line 161
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/widget/setupwizard/HtcWizardActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 162
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lcom/android/settings/LocalePickerSetupWizard;->mConfig:Landroid/content/res/Configuration;

    .line 166
    :goto_0
    return-void

    .line 164
    :cond_1
    invoke-super {p0, p1}, Lcom/htc/widget/setupwizard/HtcWizardActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "icicle"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 94
    const-string v9, "OOBE_LocalePickerSetupWizard"

    const-string v10, "onCreate"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-static {p0, v12}, Lcom/htc/configuration/HtcWrapConfiguration;->getHtcThemeId(Landroid/content/Context;I)I

    move-result v9

    iput v9, p0, Lcom/android/settings/LocalePickerSetupWizard;->mHtcThemeId:I

    .line 98
    iget v9, p0, Lcom/android/settings/LocalePickerSetupWizard;->mHtcThemeId:I

    invoke-virtual {p0, v9}, Lcom/android/settings/LocalePickerSetupWizard;->setTheme(I)V

    .line 100
    invoke-super {p0, p1}, Lcom/htc/widget/setupwizard/HtcWizardActivity;->onCreate(Landroid/os/Bundle;)V

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/LocalePickerSetupWizard;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/high16 v10, 0x400

    invoke-virtual {v9, v10}, Landroid/view/Window;->addFlags(I)V

    .line 104
    const v9, 0x1020002

    invoke-virtual {p0, v9}, Lcom/android/settings/LocalePickerSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 105
    .local v8, vg:Landroid/view/ViewGroup;
    invoke-virtual {v8, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcOverlapLayout;

    .line 106
    .local v5, overlay:Lcom/htc/widget/HtcOverlapLayout;
    invoke-virtual {v5, v13}, Lcom/htc/widget/HtcOverlapLayout;->isActionBarVisible(Z)V

    .line 107
    invoke-virtual {v5, v13}, Lcom/htc/widget/HtcOverlapLayout;->setInsetStatusBar(Z)V

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/LocalePickerSetupWizard;->getWindow()Landroid/view/Window;

    move-result-object v9

    new-instance v10, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p0}, Lcom/android/settings/LocalePickerSetupWizard;->getThemeColor()I

    move-result v11

    invoke-direct {v10, v11}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v9, v10}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 110
    invoke-direct {p0}, Lcom/android/settings/LocalePickerSetupWizard;->isVerizon()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 111
    new-instance v9, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/settings/LocalePickerSetupWizard;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v9, p0, Lcom/android/settings/LocalePickerSetupWizard;->mConfig:Landroid/content/res/Configuration;

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/LocalePickerSetupWizard;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 114
    .local v3, intent:Landroid/content/Intent;
    if-eqz v3, :cond_1

    .line 116
    const-string v9, "SelfFinishBackKeyPressed"

    invoke-virtual {v3, v9, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/settings/LocalePickerSetupWizard;->mbBackFinish:Z

    .line 117
    const-string v9, "LaunchByIcon"

    invoke-virtual {v3, v9, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/settings/LocalePickerSetupWizard;->mLaunchByIcon:Z

    .line 118
    const-string v9, "PhoneFunction"

    invoke-virtual {v3, v9, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/settings/LocalePickerSetupWizard;->mbPhoneFunc:Z

    .line 119
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

    .line 123
    :cond_1
    iget-boolean v9, p0, Lcom/android/settings/LocalePickerSetupWizard;->mbPhoneFunc:Z

    if-eqz v9, :cond_2

    invoke-direct {p0}, Lcom/android/settings/LocalePickerSetupWizard;->isVerizon()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 125
    iput-boolean v13, p0, Lcom/android/settings/LocalePickerSetupWizard;->mbShowEmergency:Z

    .line 128
    :cond_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 129
    .local v0, am:Landroid/app/IActivityManager;
    const/4 v1, 0x0

    .line 131
    .local v1, config:Landroid/content/res/Configuration;
    :try_start_0
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 132
    iget-object v4, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 133
    .local v4, locale:Ljava/util/Locale;
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

    .line 134
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 135
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/settings/LocalePickerSetupWizard;->mbIsSubtitleVisible:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .end local v4           #locale:Ljava/util/Locale;
    :cond_3
    :goto_0
    iget-boolean v9, p0, Lcom/android/settings/LocalePickerSetupWizard;->mbIsSubtitleVisible:Z

    if-eqz v9, :cond_4

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/LocalePickerSetupWizard;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0394

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 143
    .local v7, titleString:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/LocalePickerSetupWizard;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0393

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 144
    .local v6, subtitleString:Ljava/lang/String;
    if-eqz v7, :cond_4

    if-eqz v6, :cond_4

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 146
    const-string v9, "OOBE_LocalePickerSetupWizard"

    const-string v10, "same titles"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iput-boolean v12, p0, Lcom/android/settings/LocalePickerSetupWizard;->mbIsSubtitleVisible:Z

    .line 151
    .end local v6           #subtitleString:Ljava/lang/String;
    .end local v7           #titleString:Ljava/lang/String;
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/LocalePickerSetupWizard;->initialize()V

    .line 152
    return-void

    .line 137
    :catch_0
    move-exception v2

    .line 138
    .local v2, e:Landroid/os/RemoteException;
    const-string v9, "OOBE_LocalePickerSetupWizard"

    const-string v10, "am.getConfiguration"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 444
    packed-switch p1, :pswitch_data_0

    .line 454
    invoke-super {p0, p1}, Lcom/htc/widget/setupwizard/HtcWizardActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 446
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/LocalePickerSetupWizard;->mUpdatingDialog:Lcom/htc/app/HtcProgressDialog;

    if-nez v0, :cond_0

    .line 447
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v0, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/LocalePickerSetupWizard;->mUpdatingDialog:Lcom/htc/app/HtcProgressDialog;

    .line 448
    iget-object v0, p0, Lcom/android/settings/LocalePickerSetupWizard;->mUpdatingDialog:Lcom/htc/app/HtcProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 449
    iget-object v0, p0, Lcom/android/settings/LocalePickerSetupWizard;->mUpdatingDialog:Lcom/htc/app/HtcProgressDialog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x2040280

    invoke-virtual {p0, v2}, Lcom/android/settings/LocalePickerSetupWizard;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2026

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/android/settings/LocalePickerSetupWizard;->mUpdatingDialog:Lcom/htc/app/HtcProgressDialog;

    goto :goto_0

    .line 444
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 386
    const-string v0, "OOBE_LocalePickerSetupWizard"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/android/settings/LocalePickerSetupWizard;->removeDialog(I)V

    .line 388
    invoke-super {p0}, Lcom/htc/widget/setupwizard/HtcWizardActivity;->onDestroy()V

    .line 389
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    .line 394
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

    .line 396
    sparse-switch p1, :sswitch_data_0

    .line 421
    invoke-super {p0, p1, p2}, Lcom/htc/widget/setupwizard/HtcWizardActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :cond_0
    :goto_0
    :sswitch_0
    return v1

    .line 398
    :sswitch_1
    iget-boolean v2, p0, Lcom/android/settings/LocalePickerSetupWizard;->mbBackFinish:Z

    if-nez v2, :cond_1

    .line 399
    invoke-virtual {p0, v5}, Lcom/android/settings/LocalePickerSetupWizard;->setResult(I)V

    .line 400
    invoke-super {p0, p1, p2}, Lcom/htc/widget/setupwizard/HtcWizardActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 402
    :cond_1
    iget-boolean v2, p0, Lcom/android/settings/LocalePickerSetupWizard;->mLaunchByIcon:Z

    if-ne v2, v1, :cond_0

    .line 403
    invoke-virtual {p0, v5}, Lcom/android/settings/LocalePickerSetupWizard;->setResult(I)V

    .line 404
    invoke-super {p0, p1, p2}, Lcom/htc/widget/setupwizard/HtcWizardActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 414
    :sswitch_2
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/android/settings/LocalePickerSetupWizard;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 415
    .local v0, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-ne v2, v1, :cond_2

    .line 416
    invoke-direct {p0}, Lcom/android/settings/LocalePickerSetupWizard;->showEmergencyDial()V

    goto :goto_0

    .line 419
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/htc/widget/setupwizard/HtcWizardActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 396
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

    .prologue
    .line 369
    const-string v0, "OOBE_LocalePickerSetupWizard"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-super {p0}, Lcom/htc/widget/setupwizard/HtcWizardActivity;->onResume()V

    .line 372
    iget v0, p0, Lcom/android/settings/LocalePickerSetupWizard;->mHtcThemeId:I

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/htc/configuration/HtcWrapConfiguration;->getHtcThemeId(Landroid/content/Context;I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 374
    invoke-virtual {p0}, Lcom/android/settings/LocalePickerSetupWizard;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/settings/LocalePickerSetupWizard$2;

    invoke-direct {v1, p0}, Lcom/android/settings/LocalePickerSetupWizard$2;-><init>(Lcom/android/settings/LocalePickerSetupWizard;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 382
    :cond_0
    return-void
.end method
