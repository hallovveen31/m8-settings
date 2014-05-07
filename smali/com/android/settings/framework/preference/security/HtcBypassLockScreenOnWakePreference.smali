.class public Lcom/android/settings/framework/preference/security/HtcBypassLockScreenOnWakePreference;
.super Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;
.source "HtcBypassLockScreenOnWakePreference.java"


# static fields
.field private static final DB_KEY:Ljava/lang/String; = "lockscreen.htc.types.bypasslockscreen"

.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/preference/security/HtcBypassLockScreenOnWakePreference;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/security/HtcBypassLockScreenOnWakePreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method


# virtual methods
.method protected getCustomSummary()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/security/HtcBypassLockScreenOnWakePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c01db

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/security/HtcBypassLockScreenOnWakePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c01da

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected onGetValueInBackground(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen.htc.types.bypasslockscreen"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 54
    .local v0, value:I
    if-nez v0, :cond_0

    .line 55
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 58
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method protected onSetValueInBackground(Landroid/content/Context;Z)Z
    .locals 4
    .parameter "context"
    .parameter "newState"

    .prologue
    const/4 v1, 0x1

    .line 63
    if-eqz p2, :cond_0

    move v0, v1

    .line 65
    .local v0, value:I
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen.htc.types.bypasslockscreen"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 67
    return v1

    .line 63
    .end local v0           #value:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
