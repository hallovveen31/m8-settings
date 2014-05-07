.class public Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;
.super Ljava/lang/Object;
.source "HtcActivityHandlerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/app/HtcActivityHandlerWrapper$BackupButtonListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;->TAG:Ljava/lang/String;

    .line 38
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/framework/app/HtcActivityHandler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    .line 49
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 33
    sget-boolean v0, Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 33
    invoke-static {p0, p1, p2, p3}, Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;->startFragment(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;I)Z

    move-result v0

    return v0
.end method

.method public static getPreviousActivityPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "context"

    .prologue
    .line 179
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 181
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getPrevAppPkgName()Ljava/lang/String;

    move-result-object v1

    .line 183
    .local v1, callerPackage:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 202
    .end local v1           #callerPackage:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 190
    .restart local v1       #callerPackage:Ljava/lang/String;
    :cond_0
    sget-boolean v3, Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 191
    sget-object v3, Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;->TAG:Ljava/lang/String;

    const-string v4, "getPreviousActivityPackageName()\n - The callerPackage is null/empty."

    invoke-static {v3, v4}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_1
    invoke-static {p0}, Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;->getPreviousRunningTaskInfo(Landroid/content/Context;)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    .line 198
    .local v2, task:Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v2, :cond_2

    .line 199
    iget-object v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 201
    :cond_2
    sget-object v3, Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;->TAG:Ljava/lang/String;

    const-string v4, "An unexpected case!"

    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5}, Ljava/lang/Exception;-><init>()V

    invoke-static {v3, v4, v5}, Lcom/android/settings/framework/util/log/HtcLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 202
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getPreviousRunningTaskInfo(Landroid/content/Context;)Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x2

    .line 138
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 140
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 142
    .local v1, taskList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v3, :cond_0

    .line 143
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 147
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getPreviousTaskPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 161
    invoke-static {p0}, Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;->getPreviousRunningTaskInfo(Landroid/content/Context;)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    .line 163
    .local v0, task:Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v0, :cond_0

    .line 164
    iget-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 166
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static initBackupButton(Landroid/app/Fragment;Ljava/lang/String;Landroid/content/Intent;IZLandroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 12
    .parameter "fragment"
    .parameter "parentFragmentName"
    .parameter "parentIntent"
    .parameter "titleId"
    .parameter "buttonVisible"
    .parameter "extra"
    .parameter "arguments"

    .prologue
    .line 330
    move/from16 v11, p4

    .line 333
    .local v11, backUpButtonVisible:Z
    if-eqz p6, :cond_0

    .line 334
    const-string v1, "extra_back_up_button_visible"

    move-object/from16 v0, p6

    invoke-virtual {v0, v1, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 337
    sget-boolean v1, Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 338
    sget-object v1, Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extra_back_up_button_visibility:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/framework/util/log/HtcLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_0
    if-nez v11, :cond_2

    .line 344
    sget-boolean v1, Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 345
    sget-object v1, Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "backUpButtonVisible:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/framework/util/log/HtcLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_1
    :goto_0
    return-void

    .line 350
    :cond_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    if-eqz v1, :cond_3

    .line 351
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    check-cast v10, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    .line 357
    .local v10, activity:Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;
    invoke-virtual {v10}, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;->getHtcActionBar()Lcom/htc/widget/ActionBarExt;

    move-result-object v9

    .line 359
    .local v9, actionBarExt:Lcom/htc/widget/ActionBarExt;
    if-nez v9, :cond_4

    .line 360
    sget-object v1, Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;->TAG:Ljava/lang/String;

    const-string v2, "actionBarExt is not ready."

    invoke-static {v1, v2}, Lcom/android/settings/framework/util/log/HtcLog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 353
    .end local v9           #actionBarExt:Lcom/htc/widget/ActionBarExt;
    .end local v10           #activity:Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;
    :cond_3
    sget-object v1, Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;->TAG:Ljava/lang/String;

    const-string v2, "It is not a HtcInternalPreferenceActivity."

    invoke-static {v1, v2}, Lcom/android/settings/framework/util/log/HtcLog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 364
    .restart local v9       #actionBarExt:Lcom/htc/widget/ActionBarExt;
    .restart local v10       #activity:Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;
    :cond_4
    invoke-virtual {v9}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v8

    .line 366
    .local v8, actionBarContainer:Lcom/htc/widget/ActionBarContainer;
    invoke-virtual {v8, v11}, Lcom/htc/widget/ActionBarContainer;->setBackUpEnabled(Z)V

    .line 387
    if-eqz p1, :cond_1

    .line 388
    new-instance v1, Lcom/android/settings/framework/app/HtcActivityHandlerWrapper$BackupButtonListener;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/settings/framework/app/HtcActivityHandlerWrapper$BackupButtonListener;-><init>(Landroid/app/Fragment;Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/Bundle;)V

    invoke-virtual {v8, v1}, Lcom/htc/widget/ActionBarContainer;->setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public static isCallerInsideSettings(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 213
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;->getPreviousActivityPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static startFragment(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;I)Z
    .locals 7
    .parameter "caller"
    .parameter "fragmentClass"
    .parameter "extras"
    .parameter "titleRes"

    .prologue
    const/4 v6, 0x0

    .line 410
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/htc/preference/HtcPreferenceActivity;

    if-eqz v1, :cond_0

    .line 411
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceActivity;

    .line 413
    .local v0, preferenceActivity:Lcom/htc/preference/HtcPreferenceActivity;
    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/preference/HtcPreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 415
    const/4 v6, 0x1

    .line 420
    .end local v0           #preferenceActivity:Lcom/htc/preference/HtcPreferenceActivity;
    :goto_0
    return v6

    .line 417
    :cond_0
    sget-object v1, Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parent isn\'t PreferenceActivity, thus there\'s no way to launch the given Fragment (name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public addCallback(Ljava/lang/Object;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0, p1}, Lcom/android/settings/framework/app/HtcActivityHandler;->addCallback(Ljava/lang/Object;)V

    .line 113
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public setTitle(I)V
    .locals 1
    .parameter "titleResId"

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;->setTitle(Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/settings/framework/app/HtcActivityHandlerWrapper;->mHandler:Lcom/android/settings/framework/app/HtcActivityHandler;

    invoke-virtual {v0}, Lcom/android/settings/framework/app/HtcActivityHandler;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 105
    return-void
.end method
