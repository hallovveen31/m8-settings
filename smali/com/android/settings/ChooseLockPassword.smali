.class public Lcom/android/settings/ChooseLockPassword;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;
.source "ChooseLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;
    }
.end annotation


# static fields
.field private static final ACTION_NAME_TIPS_FEED:Ljava/lang/String; = "com.htc.learnmore.LOG"

#the value of this static final field might be set in the static constructor
.field static final DEBUG:Z = false

.field private static final KEY_OF_SETTING_LOCKSCREEN_TIPS:Ljava/lang/String; = "htc_lockscreen_security_tip"

.field private static final MENU_CANCEL:I = 0x1

.field private static final MENU_NEXT:I = 0x2

.field public static final PASSWORD_BACKUP:Ljava/lang/String; = "backup_password"

.field public static final PASSWORD_MAX_KEY:Ljava/lang/String; = "lockscreen.password_max"

.field public static final PASSWORD_MIN_KEY:Ljava/lang/String; = "lockscreen.password_min"

.field public static final PASSWORD_MIN_LETTERS_KEY:Ljava/lang/String; = "lockscreen.password_min_letters"

.field public static final PASSWORD_MIN_LOWERCASE_KEY:Ljava/lang/String; = "lockscreen.password_min_lowercase"

.field public static final PASSWORD_MIN_NONLETTER_KEY:Ljava/lang/String; = "lockscreen.password_min_nonletter"

.field public static final PASSWORD_MIN_NUMERIC_KEY:Ljava/lang/String; = "lockscreen.password_min_numeric"

.field public static final PASSWORD_MIN_SYMBOLS_KEY:Ljava/lang/String; = "lockscreen.password_min_symbols"

.field public static final PASSWORD_MIN_UPPERCASE_KEY:Ljava/lang/String; = "lockscreen.password_min_uppercase"

.field private static final PREFIX_TAG:Ljava/lang/String; = "ChooseLockPassword"

.field private static final SHOW_SECURITY_DIALOG:Ljava/lang/String; = "show_security_dialog"

.field private static final tipsFeedActionCoverage:Ljava/lang/String; = "topic_tag-settings-screen_lock"

.field private static final tipsFeedCallingAppName:Ljava/lang/String; = "com.htc.lockscreen.security"

.field private static final tipsFeedShowMePackageName:Ljava/lang/String; = "com.htc.showme"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 102
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/settings/ChooseLockPassword;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;-><init>()V

    .line 138
    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 85
    invoke-static {p0}, Lcom/android/settings/ChooseLockPassword;->sendIntent2Showme(Landroid/content/Context;)V

    return-void
.end method

.method public static getThemeColor(Landroid/content/Context;)I
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 806
    const/4 v2, 0x1

    new-array v2, v2, [I

    const v3, 0x2010047

    aput v3, v2, v4

    invoke-virtual {p0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 807
    .local v1, ta:Landroid/content/res/TypedArray;
    invoke-virtual {v1, v4, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 808
    .local v0, color:I
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 809
    return v0
.end method

.method private static isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .parameter "context"
    .parameter "packageName"

    .prologue
    const/4 v5, 0x1

    .line 793
    const/4 v2, 0x0

    .line 795
    .local v2, result:Z
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 796
    .local v1, pm:Landroid/content/pm/PackageManager;
    const/4 v3, 0x1

    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 797
    const/4 v2, 0x1

    .line 801
    .end local v1           #pm:Landroid/content/pm/PackageManager;
    :goto_0
    return v2

    .line 798
    :catch_0
    move-exception v0

    .line 799
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "ChooseLockPassword"

    const-string v4, "Package %s is not installed"

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static sendIntent2Showme(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 766
    if-eqz p0, :cond_1

    .line 767
    const-string v1, "com.htc.showme"

    invoke-static {p0, v1}, Lcom/android/settings/ChooseLockPassword;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 769
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 770
    .local v0, showMeIntent:Landroid/content/Intent;
    const-string v1, "com.htc.learnmore.LOG"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 771
    const-string v1, "callingApp"

    const-string v2, "com.htc.lockscreen.security"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 772
    const-string v1, "actionCoverage"

    const-string v2, "topic_tag-settings-screen_lock"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 773
    const-string v1, "actionToDo"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 774
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 777
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "htc_lockscreen_security_tip"

    invoke-static {v1, v2, v3}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 782
    .end local v0           #showMeIntent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 780
    :cond_1
    const-string v1, "ChooseLockPassword"

    const-string v2, "Context == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 115
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 116
    .local v0, modIntent:Landroid/content/Intent;
    const-string v1, ":android:show_fragment"

    const-class v2, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    const-string v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 118
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 127
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v4, 0x400

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/ChooseLockPassword;->getThemeColor(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 132
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "backup_password"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 133
    .local v1, isBackupMode:Z
    const v3, 0x7f0c0f1d

    invoke-virtual {p0, v3}, Lcom/android/settings/ChooseLockPassword;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 134
    .local v2, msg:Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    const v3, 0x7f0c023c

    invoke-virtual {p0, v3}, Lcom/android/settings/ChooseLockPassword;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 135
    :cond_0
    invoke-virtual {p0, v2, v2}, Lcom/android/settings/ChooseLockPassword;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 136
    return-void
.end method
