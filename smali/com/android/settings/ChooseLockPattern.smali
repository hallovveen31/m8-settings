.class public Lcom/android/settings/ChooseLockPattern;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;
.source "ChooseLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ChooseLockPattern$1;,
        Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;
    }
.end annotation


# static fields
.field private static final ACTION_NAME_TIPS_FEED:Ljava/lang/String; = "com.htc.learnmore.LOG"

#the value of this static final field might be set in the static constructor
.field static final DEBUG:Z = false

.field private static final KEY_OF_SETTING_LOCKSCREEN_TIPS:Ljava/lang/String; = "htc_lockscreen_security_tip"

.field static final PREFIX_TAG:Ljava/lang/String; = "ChooseLockPattern"

.field static final RESULT_FINISHED:I = 0x1

.field private static final tipsFeedActionCoverage:Ljava/lang/String; = "topic_tag-settings-screen_lock"

.field private static final tipsFeedCallingAppName:Ljava/lang/String; = "com.htc.lockscreen.security"

.field private static final tipsFeedShowMePackageName:Ljava/lang/String; = "com.htc.showme"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/settings/ChooseLockPattern;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;-><init>()V

    .line 127
    return-void
.end method

.method static synthetic access$500(Landroid/content/Context;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-static {p0}, Lcom/android/settings/ChooseLockPattern;->sendIntent2Showme(Landroid/content/Context;)V

    return-void
.end method

.method public static getThemeColor(Landroid/content/Context;)I
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 786
    const/4 v2, 0x1

    new-array v2, v2, [I

    const v3, 0x2010047

    aput v3, v2, v4

    invoke-virtual {p0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 787
    .local v1, ta:Landroid/content/res/TypedArray;
    invoke-virtual {v1, v4, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 788
    .local v0, color:I
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 789
    return v0
.end method

.method private static isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .parameter "context"
    .parameter "packageName"

    .prologue
    const/4 v5, 0x1

    .line 773
    const/4 v2, 0x0

    .line 775
    .local v2, result:Z
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 776
    .local v1, pm:Landroid/content/pm/PackageManager;
    const/4 v3, 0x1

    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 777
    const/4 v2, 0x1

    .line 781
    .end local v1           #pm:Landroid/content/pm/PackageManager;
    :goto_0
    return v2

    .line 778
    :catch_0
    move-exception v0

    .line 779
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "ChooseLockPattern"

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

    .line 746
    if-eqz p0, :cond_1

    .line 747
    const-string v1, "com.htc.showme"

    invoke-static {p0, v1}, Lcom/android/settings/ChooseLockPattern;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 749
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 750
    .local v0, showMeIntent:Landroid/content/Intent;
    const-string v1, "com.htc.learnmore.LOG"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 751
    const-string v1, "callingApp"

    const-string v2, "com.htc.lockscreen.security"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 752
    const-string v1, "actionCoverage"

    const-string v2, "topic_tag-settings-screen_lock"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 753
    const-string v1, "actionToDo"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 754
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 757
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "htc_lockscreen_security_tip"

    invoke-static {v1, v2, v3}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 762
    .end local v0           #showMeIntent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 760
    :cond_1
    const-string v1, "ChooseLockPattern"

    const-string v2, "Context == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 103
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 104
    .local v0, modIntent:Landroid/content/Intent;
    const-string v1, ":android:show_fragment"

    const-class v2, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    const-string v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 106
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 112
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/ChooseLockPattern;->getThemeColor(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 116
    const v1, 0x7f0c0f1e

    invoke-virtual {p0, v1}, Lcom/android/settings/ChooseLockPattern;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 117
    .local v0, msg:Ljava/lang/CharSequence;
    invoke-virtual {p0, v0, v0}, Lcom/android/settings/ChooseLockPattern;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 118
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 124
    invoke-super {p0, p1, p2}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
