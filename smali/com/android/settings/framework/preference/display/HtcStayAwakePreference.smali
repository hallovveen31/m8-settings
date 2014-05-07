.class public Lcom/android/settings/framework/preference/display/HtcStayAwakePreference;
.super Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;
.source "HtcStayAwakePreference.java"

# interfaces
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnResumeListener;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field public static final KEY:Ljava/lang/String; = "pref_stay_awake"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/preference/display/HtcStayAwakePreference;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/display/HtcStayAwakePreference;->TAG:Ljava/lang/String;

    .line 47
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/preference/display/HtcStayAwakePreference;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;-><init>(Landroid/content/Context;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    return-void
.end method


# virtual methods
.method protected getCustomKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    const-string v0, "pref_stay_awake"

    return-object v0
.end method

.method protected getCustomSummary()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcStayAwakePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c1032

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcStayAwakePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c1031

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onGetValueInBackground(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "stay_on_while_plugged_in"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 95
    .local v0, value:Z
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 6
    .parameter "activity"

    .prologue
    .line 110
    if-eqz p1, :cond_4

    .line 112
    const-string v3, "device_policy"

    invoke-virtual {p1, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 113
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_3

    .line 114
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v1

    .line 115
    .local v1, maxTimeToLock:J
    sget-boolean v3, Lcom/android/settings/framework/preference/display/HtcStayAwakePreference;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 116
    sget-object v3, Lcom/android/settings/framework/preference/display/HtcStayAwakePreference;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onResume, maxTimeToLock = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_0
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_2

    .line 120
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/display/HtcStayAwakePreference;->setEnabled(Z)V

    .line 134
    .end local v0           #dpm:Landroid/app/admin/DevicePolicyManager;
    .end local v1           #maxTimeToLock:J
    :cond_1
    :goto_0
    return-void

    .line 122
    .restart local v0       #dpm:Landroid/app/admin/DevicePolicyManager;
    .restart local v1       #maxTimeToLock:J
    :cond_2
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/display/HtcStayAwakePreference;->setEnabled(Z)V

    goto :goto_0

    .line 125
    .end local v1           #maxTimeToLock:J
    :cond_3
    sget-boolean v3, Lcom/android/settings/framework/preference/display/HtcStayAwakePreference;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 126
    sget-object v3, Lcom/android/settings/framework/preference/display/HtcStayAwakePreference;->TAG:Ljava/lang/String;

    const-string v4, "onResume, can\'t bind device policy manager"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 130
    .end local v0           #dpm:Landroid/app/admin/DevicePolicyManager;
    :cond_4
    sget-boolean v3, Lcom/android/settings/framework/preference/display/HtcStayAwakePreference;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 131
    sget-object v3, Lcom/android/settings/framework/preference/display/HtcStayAwakePreference;->TAG:Ljava/lang/String;

    const-string v4, "onResume, activity is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onSetValueInBackground(Landroid/content/Context;Z)Z
    .locals 4
    .parameter "context"
    .parameter "newState"

    .prologue
    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "stay_on_while_plugged_in"

    if-eqz p2, :cond_0

    const/4 v1, 0x7

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 105
    .local v0, success:Z
    return v0

    .line 100
    .end local v0           #success:Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
