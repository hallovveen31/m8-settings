.class public Lcom/android/settings/framework/flag/UserProfilingUtils;
.super Ljava/lang/Object;
.source "UserProfilingUtils.java"


# static fields
.field public static final APP_ID_PHONE:Ljava/lang/String; = "com.android.phone"

.field public static final ENABLED:Z = true


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static userProfilingSettings(Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 1

    const-string v0, "settings_retrieve"

    invoke-static {p0, p1, p2, v0}, Lcom/android/settings/framework/flag/UserProfilingUtils;->userProfilingSettings(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static userProfilingSettings(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "on"

    :goto_0
    invoke-static {p0, v0, p2, p3}, Lcom/htc/util/phone/ProfilingUtils;->userProfiling(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "off"

    goto :goto_0
.end method
