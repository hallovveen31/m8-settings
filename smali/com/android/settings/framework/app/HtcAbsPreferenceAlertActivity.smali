.class public abstract Lcom/android/settings/framework/app/HtcAbsPreferenceAlertActivity;
.super Lcom/android/settings/framework/app/HtcInternalAlertActivity;
.source "HtcAbsPreferenceAlertActivity.java"


# static fields
.field private static final DESGIN_DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

.field private mPreference:Lcom/htc/preference/HtcDialogPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/app/HtcAbsPreferenceAlertActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/app/HtcAbsPreferenceAlertActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalAlertActivity;-><init>()V

    new-instance v0, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    sget-object v1, Lcom/android/settings/framework/app/HtcAbsPreferenceAlertActivity;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/framework/app/HtcAbsPreferenceAlertActivity;->TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    return-void
.end method

.method private attachPreferenceManager()V
    .locals 9

    :try_start_0
    const-class v4, Lcom/htc/preference/HtcPreferenceManager;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/preference/HtcPreferenceManager;

    const-class v4, Lcom/htc/preference/HtcPreference;

    const-string v5, "onAttachedToHierarchy"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Lcom/htc/preference/HtcPreferenceManager;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    iget-object v4, p0, Lcom/android/settings/framework/app/HtcAbsPreferenceAlertActivity;->mPreference:Lcom/htc/preference/HtcDialogPreference;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    iget-object v4, p0, Lcom/android/settings/framework/app/HtcAbsPreferenceAlertActivity;->TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    const-string v5, "Failed to attach the PreferenceManager"

    invoke-static {v4, v5, v1}, Lcom/android/settings/framework/util/log/HtcLog;->e(Lcom/android/settings/framework/util/log/HtcLog$TagInfo;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private bindPreference()V
    .locals 1

    invoke-virtual {p0, p0}, Lcom/android/settings/framework/app/HtcAbsPreferenceAlertActivity;->onCreatePreference(Landroid/content/Context;)Lcom/htc/preference/HtcDialogPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/app/HtcAbsPreferenceAlertActivity;->mPreference:Lcom/htc/preference/HtcDialogPreference;

    iget-object v0, p0, Lcom/android/settings/framework/app/HtcAbsPreferenceAlertActivity;->mPreference:Lcom/htc/preference/HtcDialogPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->addCallback(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->requestHandlers()V

    return-void
.end method

.method private setupDialogDismissRelationship()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/framework/app/HtcAbsPreferenceAlertActivity;->mPreference:Lcom/htc/preference/HtcDialogPreference;

    check-cast v0, Lcom/android/settings/framework/preference/HtcIPreferenceListener$ISetupDialogDismissRelationship;

    new-instance v1, Lcom/android/settings/framework/app/HtcAbsPreferenceAlertActivity$1;

    invoke-direct {v1, p0}, Lcom/android/settings/framework/app/HtcAbsPreferenceAlertActivity$1;-><init>(Lcom/android/settings/framework/app/HtcAbsPreferenceAlertActivity;)V

    invoke-interface {v0, v1}, Lcom/android/settings/framework/preference/HtcIPreferenceListener$ISetupDialogDismissRelationship;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method private simulateClick()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/framework/app/HtcAbsPreferenceAlertActivity;->mPreference:Lcom/htc/preference/HtcDialogPreference;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/framework/preference/HtcAbsPreference;->performClick(Lcom/htc/preference/HtcPreference;Lcom/htc/preference/HtcPreferenceScreen;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcAbsPreferenceAlertActivity;->bindPreference()V

    return-void
.end method

.method protected abstract onCreatePreference(Landroid/content/Context;)Lcom/htc/preference/HtcDialogPreference;
.end method

.method public onDisplay()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcAbsPreferenceAlertActivity;->attachPreferenceManager()V

    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcAbsPreferenceAlertActivity;->setupDialogDismissRelationship()V

    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcAbsPreferenceAlertActivity;->simulateClick()V

    return-void
.end method
