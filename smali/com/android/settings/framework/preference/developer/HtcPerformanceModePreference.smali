.class public Lcom/android/settings/framework/preference/developer/HtcPerformanceModePreference;
.super Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;
.source "HtcPerformanceModePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final DBKEY_HTC_EPS_MODE:Ljava/lang/String; = "htc_extreme_power_saver_state"

.field public static final DBKEY_HTC_PERFORMANCE_MODE:Ljava/lang/String; = "htc_performance_mode_state"

.field private static final DBKEY_HTC_POWER_SAVER_MODE:Ljava/lang/String; = "user_powersaver_enable"

.field private static final DEBUG:Z

.field private static final DEFAULT_HTC_EPS_MODE:I

.field private static final DEFAULT_HTC_PERFORMANCE_MODE:I

.field private static final DEFAULT_HTC_POWER_SAVER_MODE:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mConfirmDialog:Landroid/app/Dialog;

.field private mWarningDialog:Landroid/app/Dialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/android/settings/framework/preference/developer/HtcPerformanceModePreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/developer/HtcPerformanceModePreference;->TAG:Ljava/lang/String;

    .line 19
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/preference/developer/HtcPerformanceModePreference;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;-><init>(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbsCheckboxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method private dismissDialogs()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 242
    iget-object v0, p0, Lcom/android/settings/framework/preference/developer/HtcPerformanceModePreference;->mWarningDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/android/settings/framework/preference/developer/HtcPerformanceModePreference;->mWarningDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 244
    iput-object v1, p0, Lcom/android/settings/framework/preference/developer/HtcPerformanceModePreference;->mWarningDialog:Landroid/app/Dialog;

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/preference/developer/HtcPerformanceModePreference;->mConfirmDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/android/settings/framework/preference/developer/HtcPerformanceModePreference;->mConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 249
    iput-object v1, p0, Lcom/android/settings/framework/preference/developer/HtcPerformanceModePreference;->mConfirmDialog:Landroid/app/Dialog;

    .line 251
    :cond_1
    return-void
.end method

.method private isEpsModeEnabled(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 160
    if-nez p1, :cond_1

    .line 161
    sget-boolean v2, Lcom/android/settings/framework/preference/developer/HtcPerformanceModePreference;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 162
    sget-object v2, Lcom/android/settings/framework/preference/developer/HtcPerformanceModePreference;->TAG:Ljava/lang/String;

    const-string v3, "isEpsModeEnabled, context is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_0
    :goto_0
    return v1

    .line 167
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "htc_extreme_power_saver_state"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 171
    .local v0, curState:I
    if-ne v0, v2, :cond_0

    move v1, v2

    .line 172
    goto :goto_0
.end method

.method private isPerformanceModeEnabled(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 122
    if-nez p1, :cond_1

    .line 123
    sget-boolean v2, Lcom/android/settings/framework/preference/developer/HtcPerformanceModePreference;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 124
    sget-object v2, Lcom/android/settings/framework/preference/developer/HtcPerformanceModePreference;->TAG:Ljava/lang/String;

    const-string v3, "isPerformanceModeEnabled, context is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_0
    :goto_0
    return v1

    .line 129
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "htc_performance_mode_state"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 133
    .local v0, curState:I
    if-ne v0, v2, :cond_0

    move v1, v2

    .line 134
    goto :goto_0
.end method

.method private isPowerSaverModeEnabled(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 141
    if-nez p1, :cond_1

    .line 142
    sget-boolean v2, Lcom/android/settings/framework/preference/developer/HtcPerformanceModePreference;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 143
    sget-object v2, Lcom/android/settings/framework/preference/developer/HtcPerformanceModePreference;->TAG:Ljava/lang/String;

    const-string v3, "isPowerSaverModeEnabled, context is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_0
    :goto_0
    return v1

    .line 148
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "user_powersaver_enable"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 152
    .local v0, curState:I
    if-ne v0, v2, :cond_0

    move v1, v2

    .line 153
    goto :goto_0
.end method

.method private showConfirmDialog()V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/settings/framework/preference/developer/HtcPerformanceModePreference;->mConfirmDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 231
    invoke-direct {p0}, Lcom/android/settings/framework/preference/developer/HtcPerformanceModePreference;->dismissDialogs()V

    .line 234
    :cond_0
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/developer/HtcPerformanceModePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0b3f

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0b41

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    invoke-virtual {v0, v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/preference/developer/HtcPerformanceModePreference;->mConfirmDialog:Landroid/app/Dialog;

    .line 239
    return-void
.end method

.method private showWarningDialog()V
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/settings/framework/preference/developer/HtcPerformanceModePreference;->mWarningDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 220
    invoke-direct {p0}, Lcom/android/settings/framework/preference/developer/HtcPerformanceModePreference;->dismissDialogs()V

    .line 223
    :cond_0
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/developer/HtcPerformanceModePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0b3f

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0b42

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/preference/developer/HtcPerformanceModePreference;->mWarningDialog:Landroid/app/Dialog;

    .line 227
    return-void
.end method

.method private turnOffPerformanceMode()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 179
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/developer/HtcPerformanceModePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 181
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_1

    .line 182
    sget-boolean v1, Lcom/android/settings/framework/preference/developer/HtcPerformanceModePreference;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 183
    sget-object v1, Lcom/android/settings/framework/preference/developer/HtcPerformanceModePreference;->TAG:Ljava/lang/String;

    const-string v2, "turnOffPerformanceMode, context is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    sget-boolean v1, Lcom/android/settings/framework/preference/developer/HtcPerformanceModePreference;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 189
    sget-object v1, Lcom/android/settings/framework/preference/developer/HtcPerformanceModePreference;->TAG:Ljava/lang/String;

    const-string v2, "turnOffPerformanceMode, set to 0"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_2
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "htc_performance_mode_state"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 195
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/developer/HtcPerformanceModePreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private turnOnPerformanceMode()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 199
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/developer/HtcPerformanceModePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 201
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_1

    .line 202
    sget-boolean v1, Lcom/android/settings/framework/preference/developer/HtcPerformanceModePreference;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 203
    sget-object v1, Lcom/android/settings/framework/preference/developer/HtcPerformanceModePreference;->TAG:Ljava/lang/String;

    const-string v2, "turnOnPerformanceMode, context is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    sget-boolean v1, Lcom/android/settings/framework/preference/developer/HtcPerformanceModePreference;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 209
    sget-object v1, Lcom/android/settings/framework/preference/developer/HtcPerformanceModePreference;->TAG:Ljava/lang/String;

    const-string v2, "turnOnPerformanceMode, set to 1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_2
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "htc_performance_mode_state"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 215
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/developer/HtcPerformanceModePreference;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected getCustomSummary()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/developer/HtcPerformanceModePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0b40

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/developer/HtcPerformanceModePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0b3f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onChange(Z)Z
    .locals 8
    .parameter "newState"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/developer/HtcPerformanceModePreference;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 88
    :goto_0
    return v6

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/developer/HtcPerformanceModePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/framework/preference/developer/HtcPerformanceModePreference;->isPowerSaverModeEnabled(Landroid/content/Context;)Z

    move-result v2

    .line 64
    .local v2, bPowerSaverMode:Z
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/developer/HtcPerformanceModePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/framework/preference/developer/HtcPerformanceModePreference;->isEpsModeEnabled(Landroid/content/Context;)Z

    move-result v1

    .line 65
    .local v1, bEpsMode:Z
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/developer/HtcPerformanceModePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/framework/preference/developer/HtcPerformanceModePreference;->isPerformanceModeEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 67
    .local v0, bCurPerformanceMode:Z
    sget-boolean v3, Lcom/android/settings/framework/preference/developer/HtcPerformanceModePreference;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 68
    sget-object v3, Lcom/android/settings/framework/preference/developer/HtcPerformanceModePreference;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "performClick, ps = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", eps = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", cur perf mode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_1
    if-ne v0, v7, :cond_2

    .line 74
    invoke-direct {p0}, Lcom/android/settings/framework/preference/developer/HtcPerformanceModePreference;->turnOffPerformanceMode()V

    goto :goto_0

    .line 80
    :cond_2
    if-eq v2, v7, :cond_3

    if-ne v1, v7, :cond_4

    .line 81
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/framework/preference/developer/HtcPerformanceModePreference;->showWarningDialog()V

    goto :goto_0

    .line 85
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/framework/preference/developer/HtcPerformanceModePreference;->showConfirmDialog()V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/settings/framework/preference/developer/HtcPerformanceModePreference;->mConfirmDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_0

    .line 256
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 257
    invoke-direct {p0}, Lcom/android/settings/framework/preference/developer/HtcPerformanceModePreference;->turnOnPerformanceMode()V

    .line 260
    :cond_0
    return-void
.end method

.method protected onGetValueInBackground(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "htc_performance_mode_state"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 97
    .local v0, value:I
    sget-boolean v1, Lcom/android/settings/framework/preference/developer/HtcPerformanceModePreference;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 98
    sget-object v1, Lcom/android/settings/framework/preference/developer/HtcPerformanceModePreference;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGetValueInBackground, value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_0
    if-ne v0, v5, :cond_1

    .line 102
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 105
    :goto_0
    return-object v1

    :cond_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method protected onSetValueInBackground(Landroid/content/Context;Z)Z
    .locals 4
    .parameter "context"
    .parameter "newState"

    .prologue
    const/4 v1, 0x1

    .line 110
    sget-boolean v0, Lcom/android/settings/framework/preference/developer/HtcPerformanceModePreference;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 111
    sget-object v0, Lcom/android/settings/framework/preference/developer/HtcPerformanceModePreference;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSetValueInBackground, newState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "htc_performance_mode_state"

    if-eqz p2, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 118
    return v1

    .line 114
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
