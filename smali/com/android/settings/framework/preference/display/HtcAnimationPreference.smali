.class public Lcom/android/settings/framework/preference/display/HtcAnimationPreference;
.super Lcom/htc/preference/HtcCheckBoxPreference;
.source "HtcAnimationPreference.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceFirstBindViewListener;


# static fields
.field public static final KEY:Ljava/lang/String; = "pref_animation"

.field private static final TAG:Ljava/lang/String; = "HtcAnimationPreference"


# instance fields
.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 41
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/display/HtcAnimationPreference;->initialize(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/display/HtcAnimationPreference;->initialize(Landroid/content/Context;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/display/HtcAnimationPreference;->initialize(Landroid/content/Context;)V

    .line 64
    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcAnimationPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    .line 73
    const-string v5, "pref_animation"

    invoke-virtual {p0, v5}, Lcom/android/settings/framework/preference/display/HtcAnimationPreference;->setKey(Ljava/lang/String;)V

    .line 75
    :cond_0
    const v5, 0x7f0c092e

    invoke-virtual {p0, v5}, Lcom/android/settings/framework/preference/display/HtcAnimationPreference;->setTitle(I)V

    .line 77
    const v5, 0x7f0c0932

    invoke-virtual {p0, v5}, Lcom/android/settings/framework/preference/display/HtcAnimationPreference;->setSummary(I)V

    .line 80
    invoke-virtual {p0, v7}, Lcom/android/settings/framework/preference/display/HtcAnimationPreference;->setPersistent(Z)V

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcAnimationPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "htc_animation_enabled"

    invoke-static {v5, v6, v7}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v3

    .line 85
    .local v3, value:Z
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/display/HtcAnimationPreference;->setChecked(Z)V

    .line 87
    const-string v5, "window"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/framework/preference/display/HtcAnimationPreference;->mWindowManager:Landroid/view/IWindowManager;

    .line 88
    invoke-virtual {p0, p0}, Lcom/android/settings/framework/preference/display/HtcAnimationPreference;->setOnPreferenceFirstBindViewListener(Lcom/htc/preference/HtcPreference$OnPreferenceFirstBindViewListener;)V

    .line 92
    const/4 v4, 0x0

    .line 93
    .local v4, windowScale:F
    const/4 v2, 0x0

    .line 94
    .local v2, transitionScale:F
    const/4 v0, 0x0

    .line 96
    .local v0, animatorDurationScale:F
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/framework/preference/display/HtcAnimationPreference;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/view/IWindowManager;->getAnimationScale(I)F

    move-result v4

    .line 97
    iget-object v5, p0, Lcom/android/settings/framework/preference/display/HtcAnimationPreference;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/view/IWindowManager;->getAnimationScale(I)F

    move-result v2

    .line 98
    iget-object v5, p0, Lcom/android/settings/framework/preference/display/HtcAnimationPreference;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v6, 0x2

    invoke-interface {v5, v6}, Landroid/view/IWindowManager;->getAnimationScale(I)F

    move-result v0

    .line 99
    sget-boolean v5, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v5, :cond_1

    .line 100
    const-string v5, "HtcAnimationPreference"

    const-string v6, "check animation"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const-string v5, "HtcAnimationPreference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "windowScale: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const-string v5, "HtcAnimationPreference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "transitionScale: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const-string v5, "HtcAnimationPreference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "animatorDurationScale: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_1
    cmpl-float v5, v4, v8

    if-nez v5, :cond_2

    cmpl-float v5, v2, v8

    if-nez v5, :cond_2

    cmpl-float v5, v0, v8

    if-nez v5, :cond_2

    .line 106
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/settings/framework/preference/display/HtcAnimationPreference;->setChecked(Z)V

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcAnimationPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "htc_animation_enabled"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :cond_2
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v1

    .line 111
    .local v1, e:Landroid/os/RemoteException;
    const-string v5, "HtcAnimationPreference"

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method protected onClick()V
    .locals 9

    .prologue
    const/high16 v8, 0x3f80

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcAnimationPreference;->isChecked()Z

    move-result v1

    .line 126
    .local v1, checked:Z
    if-nez v1, :cond_3

    move v1, v5

    .line 128
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/display/HtcAnimationPreference;->setChecked(Z)V

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcAnimationPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "htc_animation_enabled"

    invoke-static {v5, v6, v1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 131
    if-eqz v1, :cond_4

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcAnimationPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "htc_window_animation_scale"

    invoke-static {v5, v6, v8}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v4

    .line 136
    .local v4, windowScale:F
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcAnimationPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "htc_transition_animation_scale"

    invoke-static {v5, v6, v8}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v3

    .line 139
    .local v3, transitionScale:F
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcAnimationPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "htc_animator_duration_scale"

    invoke-static {v5, v6, v8}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    .line 144
    .local v0, animatorDurationScale:F
    cmpl-float v5, v4, v7

    if-nez v5, :cond_1

    cmpl-float v5, v3, v7

    if-nez v5, :cond_1

    cmpl-float v5, v0, v7

    if-nez v5, :cond_1

    .line 146
    sget-boolean v5, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v5, :cond_0

    .line 147
    const-string v5, "HtcAnimationPreference"

    const-string v6, "wrong case, all old animation should not be 0.0f"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_0
    const/high16 v4, 0x3f80

    .line 152
    const/high16 v3, 0x3f80

    .line 153
    const/high16 v0, 0x3f80

    .line 158
    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/framework/preference/display/HtcAnimationPreference;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v6, 0x0

    invoke-interface {v5, v6, v4}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    .line 159
    iget-object v5, p0, Lcom/android/settings/framework/preference/display/HtcAnimationPreference;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v6, 0x1

    invoke-interface {v5, v6, v3}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    .line 160
    iget-object v5, p0, Lcom/android/settings/framework/preference/display/HtcAnimationPreference;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v6, 0x2

    invoke-interface {v5, v6, v0}, Landroid/view/IWindowManager;->setAnimationScale(IF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :goto_1
    sget-boolean v5, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v5, :cond_2

    .line 166
    const-string v5, "HtcAnimationPreference"

    const-string v6, "enable animation"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const-string v5, "HtcAnimationPreference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "windowScale: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const-string v5, "HtcAnimationPreference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "transitionScale: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const-string v5, "HtcAnimationPreference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "animatorDurationScale: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_2
    :goto_2
    return-void

    .end local v0           #animatorDurationScale:F
    .end local v3           #transitionScale:F
    .end local v4           #windowScale:F
    :cond_3
    move v1, v6

    .line 126
    goto/16 :goto_0

    .line 161
    .restart local v0       #animatorDurationScale:F
    .restart local v3       #transitionScale:F
    .restart local v4       #windowScale:F
    :catch_0
    move-exception v2

    .line 162
    .local v2, e:Landroid/os/RemoteException;
    const-string v5, "HtcAnimationPreference"

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 173
    .end local v0           #animatorDurationScale:F
    .end local v2           #e:Landroid/os/RemoteException;
    .end local v3           #transitionScale:F
    .end local v4           #windowScale:F
    :cond_4
    const/4 v4, 0x0

    .line 174
    .restart local v4       #windowScale:F
    const/4 v3, 0x0

    .line 175
    .restart local v3       #transitionScale:F
    const/4 v0, 0x0

    .line 177
    .restart local v0       #animatorDurationScale:F
    :try_start_1
    iget-object v5, p0, Lcom/android/settings/framework/preference/display/HtcAnimationPreference;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/view/IWindowManager;->getAnimationScale(I)F

    move-result v4

    .line 178
    iget-object v5, p0, Lcom/android/settings/framework/preference/display/HtcAnimationPreference;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/view/IWindowManager;->getAnimationScale(I)F

    move-result v3

    .line 179
    iget-object v5, p0, Lcom/android/settings/framework/preference/display/HtcAnimationPreference;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v6, 0x2

    invoke-interface {v5, v6}, Landroid/view/IWindowManager;->getAnimationScale(I)F

    move-result v0

    .line 180
    iget-object v5, p0, Lcom/android/settings/framework/preference/display/HtcAnimationPreference;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    .line 181
    iget-object v5, p0, Lcom/android/settings/framework/preference/display/HtcAnimationPreference;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    .line 182
    iget-object v5, p0, Lcom/android/settings/framework/preference/display/HtcAnimationPreference;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/view/IWindowManager;->setAnimationScale(IF)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 187
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcAnimationPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "htc_window_animation_scale"

    invoke-static {v5, v6, v4}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 189
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcAnimationPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "htc_transition_animation_scale"

    invoke-static {v5, v6, v3}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 191
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcAnimationPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "htc_animator_duration_scale"

    invoke-static {v5, v6, v0}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 194
    sget-boolean v5, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v5, :cond_2

    .line 195
    const-string v5, "HtcAnimationPreference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "windowScale: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const-string v5, "HtcAnimationPreference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "transitionScale: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const-string v5, "HtcAnimationPreference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "animatorDurationScale:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const-string v5, "HtcAnimationPreference"

    const-string v6, "disable animation"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 183
    :catch_1
    move-exception v2

    .line 184
    .restart local v2       #e:Landroid/os/RemoteException;
    const-string v5, "HtcAnimationPreference"

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3
.end method

.method public onPreferenceFirstBindView(Lcom/htc/preference/HtcPreference;)V
    .locals 4
    .parameter "preference"

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/display/HtcAnimationPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "htc_animation_enabled"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    .line 120
    .local v0, value:Z
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/display/HtcAnimationPreference;->setChecked(Z)V

    .line 121
    return-void
.end method
