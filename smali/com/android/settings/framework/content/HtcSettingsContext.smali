.class public abstract Lcom/android/settings/framework/content/HtcSettingsContext;
.super Landroid/content/HtcContext;
.source "HtcSettingsContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/content/HtcSettingsContext$1;,
        Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;
    }
.end annotation


# static fields
.field private static final BACK_STACK_PREFS:Ljava/lang/String; = ":android:prefs"

.field private static final DEBUG:Z

.field public static final EXTRA_OPTIONS:Ljava/lang/String;

.field public static final EXTRA_REQUEST_CODE:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


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

    const-class v1, Lcom/android/settings/framework/content/HtcSettingsContext;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/content/HtcSettingsContext;->TAG:Ljava/lang/String;

    .line 38
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/content/HtcSettingsContext;->DEBUG:Z

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/settings/framework/content/HtcSettingsContext;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":REQUEST_CODE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/content/HtcSettingsContext;->EXTRA_REQUEST_CODE:Ljava/lang/String;

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/settings/framework/content/HtcSettingsContext;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":EXTRA_OPTIONS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/content/HtcSettingsContext;->EXTRA_OPTIONS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/content/HtcContext;-><init>()V

    .line 71
    return-void
.end method

.method private static doSendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 247
    sget-boolean v0, Lcom/android/settings/framework/content/HtcSettingsContext;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 248
    sget-object v0, Lcom/android/settings/framework/content/HtcSettingsContext;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doBroadcast("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 251
    return-void
.end method

.method private static doStartActivity(Lcom/android/settings/framework/app/HtcIInternalHost;Landroid/content/Intent;Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;)V
    .locals 4
    .parameter "host"
    .parameter "intent"
    .parameter "actionType"

    .prologue
    .line 327
    :try_start_0
    sget-object v1, Lcom/android/settings/framework/content/HtcSettingsContext$1;->$SwitchMap$com$android$settings$framework$content$HtcSettingsContext$ActionType:[I

    invoke-virtual {p2}, Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 352
    :goto_0
    return-void

    .line 329
    :pswitch_0
    invoke-static {p0}, Lcom/android/settings/framework/content/HtcSettingsContext;->getDefaultContext(Lcom/android/settings/framework/app/HtcIInternalHost;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 342
    :catch_0
    move-exception v0

    .line 343
    .local v0, e:Landroid/content/ActivityNotFoundException;
    sget-object v1, Lcom/android/settings/framework/content/HtcSettingsContext;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 346
    invoke-interface {p0}, Lcom/android/settings/framework/app/HtcIInternalHost;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {p0}, Lcom/android/settings/framework/app/HtcIInternalHost;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c00f1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 334
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :pswitch_1
    :try_start_1
    invoke-static {p0, p1}, Lcom/android/settings/framework/content/HtcSettingsContext;->doStartActivity_forResults(Lcom/android/settings/framework/app/HtcIInternalHost;Landroid/content/Intent;)V

    goto :goto_0

    .line 339
    :pswitch_2
    invoke-static {p0, p1}, Lcom/android/settings/framework/content/HtcSettingsContext;->doStartActivity_fromFragment(Lcom/android/settings/framework/app/HtcIInternalHost;Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 327
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static doStartActivity_forResults(Lcom/android/settings/framework/app/HtcIInternalHost;Landroid/content/Intent;)V
    .locals 6
    .parameter "host"
    .parameter "intent"

    .prologue
    .line 365
    sget-boolean v3, Lcom/android/settings/framework/content/HtcSettingsContext;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 366
    sget-object v3, Lcom/android/settings/framework/content/HtcSettingsContext;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doStartActivity_forResults("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_0
    instance-of v3, p0, Landroid/app/Activity;

    if-nez v3, :cond_1

    .line 372
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The host is not an instance of Activity.\n - instance: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    move-object v0, p0

    .line 377
    check-cast v0, Landroid/app/Activity;

    .line 378
    .local v0, activity:Landroid/app/Activity;
    sget-object v3, Lcom/android/settings/framework/content/HtcSettingsContext;->EXTRA_REQUEST_CODE:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 379
    .local v2, requestCode:I
    sget-object v3, Lcom/android/settings/framework/content/HtcSettingsContext;->EXTRA_OPTIONS:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 381
    .local v1, options:Landroid/os/Bundle;
    invoke-virtual {v0, p1, v2, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 383
    return-void
.end method

.method private static doStartActivity_fromFragment(Lcom/android/settings/framework/app/HtcIInternalHost;Landroid/content/Intent;)V
    .locals 7
    .parameter "host"
    .parameter "intent"

    .prologue
    .line 397
    sget-boolean v4, Lcom/android/settings/framework/content/HtcSettingsContext;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 398
    sget-object v4, Lcom/android/settings/framework/content/HtcSettingsContext;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doStartActivity_fromFragment("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_0
    instance-of v4, p0, Landroid/app/Fragment;

    if-nez v4, :cond_1

    .line 404
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The host is not an instance of Fragment.\n - instance: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    move-object v1, p0

    .line 409
    check-cast v1, Landroid/app/Fragment;

    .line 410
    .local v1, fragment:Landroid/app/Fragment;
    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 411
    .local v0, activity:Landroid/app/Activity;
    sget-object v4, Lcom/android/settings/framework/content/HtcSettingsContext;->EXTRA_REQUEST_CODE:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 412
    .local v3, requestCode:I
    sget-object v4, Lcom/android/settings/framework/content/HtcSettingsContext;->EXTRA_OPTIONS:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 414
    .local v2, options:Landroid/os/Bundle;
    if-eqz v0, :cond_2

    .line 421
    invoke-virtual {v0, v1, p1, v3, v2}, Landroid/app/Activity;->startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 428
    :goto_0
    return-void

    .line 424
    :cond_2
    sget-object v4, Lcom/android/settings/framework/content/HtcSettingsContext;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to start an activity from a fragment.\n - fragment: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n - activity: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/settings/framework/util/log/HtcLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static doStartFragment(Lcom/android/settings/framework/app/HtcIInternalHost;Landroid/content/Intent;)V
    .locals 4
    .parameter "host"
    .parameter "intent"

    .prologue
    .line 443
    sget-boolean v1, Lcom/android/settings/framework/content/HtcSettingsContext;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 444
    sget-object v1, Lcom/android/settings/framework/content/HtcSettingsContext;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doStartFragment("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_0
    instance-of v1, p0, Landroid/app/Fragment;

    if-eqz v1, :cond_1

    move-object v1, p0

    .line 449
    check-cast v1, Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 451
    .local v0, activity:Landroid/app/Activity;
    instance-of v1, v0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    if-eqz v1, :cond_1

    move-object p0, v0

    .line 452
    check-cast p0, Lcom/android/settings/framework/app/HtcInternalPreferenceActivity;

    .line 456
    .end local v0           #activity:Landroid/app/Activity;
    :cond_1
    instance-of v1, p0, Lcom/htc/preference/HtcPreferenceActivity;

    if-nez v1, :cond_2

    .line 458
    sget-object v1, Lcom/android/settings/framework/content/HtcSettingsContext;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The host ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is not instanceof HtcPreferenceActivity."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :goto_0
    return-void

    .line 462
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_3

    .line 463
    sget-object v1, Lcom/android/settings/framework/content/HtcSettingsContext;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The component from the "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " should not be null."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 501
    :cond_3
    invoke-static {p0, p1}, Lcom/android/settings/framework/content/HtcSettingsContext;->doStartFragmentInForeground(Lcom/android/settings/framework/app/HtcIInternalHost;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private static doStartFragmentInForeground(Lcom/android/settings/framework/app/HtcIInternalHost;Landroid/content/Intent;)V
    .locals 11
    .parameter "host"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 506
    sget-boolean v1, Lcom/android/settings/framework/content/HtcSettingsContext;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 507
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">> doStartFragmentInForeground("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/framework/content/HtcSettingsContext;->log(Ljava/lang/String;)V

    :cond_0
    move-object v0, p0

    .line 517
    check-cast v0, Lcom/htc/preference/HtcPreferenceActivity;

    .local v0, activity:Lcom/htc/preference/HtcPreferenceActivity;
    move-object v8, v0

    .line 518
    .local v8, context:Landroid/content/Context;
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 519
    .local v10, packageName:Ljava/lang/String;
    new-instance v7, Lcom/android/settings/framework/content/HtcComponentName;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-direct {v7, v1}, Lcom/android/settings/framework/content/HtcComponentName;-><init>(Landroid/content/ComponentName;)V

    .line 520
    .local v7, component:Lcom/android/settings/framework/content/HtcComponentName;
    const-string v1, ":android:show_fragment_title"

    invoke-virtual {p1, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 523
    .local v3, titleRes:I
    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 526
    invoke-virtual {v7}, Lcom/android/settings/framework/content/HtcComponentName;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/htc/preference/HtcPreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 555
    :goto_0
    sget-boolean v1, Lcom/android/settings/framework/content/HtcSettingsContext;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 556
    const-string v1, "<< doStartFragmentInForeground(...)"

    invoke-static {v1}, Lcom/android/settings/framework/content/HtcSettingsContext;->log(Ljava/lang/String;)V

    .line 558
    :cond_1
    return-void

    .line 536
    :cond_2
    invoke-static {v8, v10}, Landroid/content/HtcContext;->createPackageContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v8

    .line 541
    invoke-virtual {v7}, Lcom/android/settings/framework/content/HtcComponentName;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v8, v1, v2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v9

    .line 546
    .local v9, fragment:Landroid/app/Fragment;
    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x10202f6

    invoke-virtual {v1, v2, v9}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(I)Landroid/app/FragmentTransaction;

    move-result-object v1

    const/16 v2, 0x1001

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    move-result-object v1

    const-string v2, ":android:prefs"

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method

.method private static doStartService(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 264
    sget-boolean v0, Lcom/android/settings/framework/content/HtcSettingsContext;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 265
    sget-object v0, Lcom/android/settings/framework/content/HtcSettingsContext;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doStartService("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 268
    return-void
.end method

.method private static getDefaultContext(Lcom/android/settings/framework/app/HtcIInternalHost;)Landroid/content/Context;
    .locals 1
    .parameter "host"

    .prologue
    .line 163
    if-eqz p0, :cond_0

    .line 164
    invoke-interface {p0}, Lcom/android/settings/framework/app/HtcIInternalHost;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 166
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 561
    sget-object v0, Lcom/android/settings/framework/content/HtcSettingsContext;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/settings/framework/util/log/HtcLog;->getPidTidTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    return-void
.end method

.method public static startIntent(Lcom/android/settings/framework/app/HtcIInternalHost;Landroid/content/Intent;Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;)V
    .locals 5
    .parameter "host"
    .parameter "intent"
    .parameter "actionType"

    .prologue
    .line 190
    if-nez p1, :cond_0

    .line 191
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "The intent is null. There is no target to be launched."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 196
    :cond_0
    if-nez p2, :cond_1

    .line 197
    sget-object p2, Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;->START_ACTIVITY:Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;

    .line 200
    :cond_1
    sget-boolean v2, Lcom/android/settings/framework/content/HtcSettingsContext;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x200

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 202
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/android/settings/framework/util/log/dumper/HtcDumperFactory;->getIntentDumper()Lcom/android/settings/framework/util/log/dumper/HtcIDumper;

    move-result-object v1

    .line 204
    .local v1, dumper:Lcom/android/settings/framework/util/log/dumper/HtcIDumper;,"Lcom/android/settings/framework/util/log/dumper/HtcIDumper<Landroid/content/Intent;>;"
    const-string v2, "startIntent(...)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n - host: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n - intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\t"

    invoke-interface {v1, v3, p1}, Lcom/android/settings/framework/util/log/dumper/HtcIDumper;->toString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n - actionType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 211
    sget-object v2, Lcom/android/settings/framework/content/HtcSettingsContext;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v1           #dumper:Lcom/android/settings/framework/util/log/dumper/HtcIDumper;,"Lcom/android/settings/framework/util/log/dumper/HtcIDumper<Landroid/content/Intent;>;"
    :cond_2
    sget-object v2, Lcom/android/settings/framework/content/HtcSettingsContext$1;->$SwitchMap$com$android$settings$framework$content$HtcSettingsContext$ActionType:[I

    invoke-virtual {p2}, Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 234
    :goto_0
    return-void

    .line 216
    :pswitch_0
    invoke-static {p0}, Lcom/android/settings/framework/content/HtcSettingsContext;->getDefaultContext(Lcom/android/settings/framework/app/HtcIInternalHost;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/android/settings/framework/content/HtcSettingsContext;->doSendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 219
    :pswitch_1
    invoke-static {p0}, Lcom/android/settings/framework/content/HtcSettingsContext;->getDefaultContext(Lcom/android/settings/framework/app/HtcIInternalHost;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/android/settings/framework/content/HtcSettingsContext;->doStartService(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 224
    :pswitch_2
    invoke-static {p0, p1, p2}, Lcom/android/settings/framework/content/HtcSettingsContext;->doStartActivity(Lcom/android/settings/framework/app/HtcIInternalHost;Landroid/content/Intent;Lcom/android/settings/framework/content/HtcSettingsContext$ActionType;)V

    goto :goto_0

    .line 227
    :pswitch_3
    invoke-static {p0, p1}, Lcom/android/settings/framework/content/HtcSettingsContext;->doStartFragment(Lcom/android/settings/framework/app/HtcIInternalHost;Landroid/content/Intent;)V

    goto :goto_0

    .line 230
    :pswitch_4
    sget-object v2, Lcom/android/settings/framework/content/HtcSettingsContext;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Have not supported this kind of type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settings/framework/util/log/HtcLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 214
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
