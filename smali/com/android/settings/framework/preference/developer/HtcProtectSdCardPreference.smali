.class public Lcom/android/settings/framework/preference/developer/HtcProtectSdCardPreference;
.super Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;
.source "HtcProtectSdCardPreference.java"


# annotations
.annotation build Lcom/android/settings/framework/os/annotation/HtcPerformance$HtcPerformanceVersion;
    value = 2.0
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/preference/developer/HtcProtectSdCardPreference$ConfirmEnforceFragment;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = null

.field private static final TAG_CONFIRM_ENFORCE:Ljava/lang/String; = "confirm_enforce"


# instance fields
.field private mFragment:Landroid/app/Fragment;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/preference/developer/HtcProtectSdCardPreference;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/developer/HtcProtectSdCardPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/Fragment;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Lcom/android/settings/framework/preference/developer/HtcProtectSdCardPreference;->initialize(Landroid/app/Fragment;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/app/Fragment;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, p3}, Lcom/android/settings/framework/preference/developer/HtcProtectSdCardPreference;->initialize(Landroid/app/Fragment;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/framework/preference/developer/HtcProtectSdCardPreference;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;->syncStateToDataSourceInBackground(Z)V

    return-void
.end method

.method private static isPermissionEnforced(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {v1, v2}, Landroid/content/pm/IPackageManager;->isPermissionEnforced(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Problem talking with PackageManager"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static setPermissionEnforced(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 4

    const/4 v1, 0x1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {v2, v3, p2}, Landroid/content/pm/IPackageManager;->setPermissionEnforced(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Problem talking with PackageManager"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private showDialog(Landroid/app/Fragment;)V
    .locals 3

    new-instance v0, Lcom/android/settings/framework/preference/developer/HtcProtectSdCardPreference$ConfirmEnforceFragment;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/preference/developer/HtcProtectSdCardPreference$ConfirmEnforceFragment;-><init>(Lcom/android/settings/framework/preference/developer/HtcProtectSdCardPreference;)V

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    invoke-virtual {p1}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "confirm_enforce"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getCustomKey()Ljava/lang/String;
    .locals 1

    const-string v0, "enforce_read_external"

    return-object v0
.end method

.method protected getCustomSummary()Ljava/lang/CharSequence;
    .locals 2

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c1044

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitle()Ljava/lang/CharSequence;
    .locals 2

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c1043

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method initialize(Landroid/app/Fragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/preference/developer/HtcProtectSdCardPreference;->mFragment:Landroid/app/Fragment;

    return-void
.end method

.method protected onChange(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/framework/preference/developer/HtcProtectSdCardPreference;->mFragment:Landroid/app/Fragment;

    invoke-direct {p0, v0}, Lcom/android/settings/framework/preference/developer/HtcProtectSdCardPreference;->showDialog(Landroid/app/Fragment;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onGetValueInBackground(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 2

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p1, v1}, Lcom/android/settings/framework/preference/developer/HtcProtectSdCardPreference;->isPermissionEnforced(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method protected onSetValueInBackground(Landroid/content/Context;Z)Z
    .locals 2

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p1, v1, p2}, Lcom/android/settings/framework/preference/developer/HtcProtectSdCardPreference;->setPermissionEnforced(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
