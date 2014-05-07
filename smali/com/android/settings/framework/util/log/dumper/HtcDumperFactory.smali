.class public final Lcom/android/settings/framework/util/log/dumper/HtcDumperFactory;
.super Ljava/lang/Object;
.source "HtcDumperFactory.java"


# static fields
.field private static sBundleDumper:Lcom/android/settings/framework/util/log/dumper/HtcIDumper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settings/framework/util/log/dumper/HtcIDumper",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private static sConfigurationDumper:Lcom/android/settings/framework/util/log/dumper/HtcIDumper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settings/framework/util/log/dumper/HtcIDumper",
            "<",
            "Landroid/content/res/Configuration;",
            ">;"
        }
    .end annotation
.end field

.field private static sContextDumper:Lcom/android/settings/framework/util/log/dumper/HtcIDumper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settings/framework/util/log/dumper/HtcIDumper",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private static sFieldDumper:Lcom/android/settings/framework/util/log/dumper/HtcIDumper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settings/framework/util/log/dumper/HtcIDumper",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private static sIntentDumper:Lcom/android/settings/framework/util/log/dumper/HtcIDumper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settings/framework/util/log/dumper/HtcIDumper",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private static sRunningServiceInfoDumper:Lcom/android/settings/framework/util/log/dumper/HtcIDumper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settings/framework/util/log/dumper/HtcIDumper",
            "<",
            "Landroid/app/ActivityManager$RunningServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static sUriDumper:Lcom/android/settings/framework/util/log/dumper/HtcIDumper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settings/framework/util/log/dumper/HtcIDumper",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBundleDumper()Lcom/android/settings/framework/util/log/dumper/HtcIDumper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/settings/framework/util/log/dumper/HtcIDumper",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    sget-object v0, Lcom/android/settings/framework/util/log/dumper/HtcDumperFactory;->sBundleDumper:Lcom/android/settings/framework/util/log/dumper/HtcIDumper;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/android/settings/framework/util/log/dumper/HtcBundleDumper;

    invoke-direct {v0}, Lcom/android/settings/framework/util/log/dumper/HtcBundleDumper;-><init>()V

    sput-object v0, Lcom/android/settings/framework/util/log/dumper/HtcDumperFactory;->sBundleDumper:Lcom/android/settings/framework/util/log/dumper/HtcIDumper;

    .line 38
    :cond_0
    sget-object v0, Lcom/android/settings/framework/util/log/dumper/HtcDumperFactory;->sBundleDumper:Lcom/android/settings/framework/util/log/dumper/HtcIDumper;

    return-object v0
.end method

.method public static getConfigurationDumper()Lcom/android/settings/framework/util/log/dumper/HtcIDumper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/settings/framework/util/log/dumper/HtcIDumper",
            "<",
            "Landroid/content/res/Configuration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    sget-object v0, Lcom/android/settings/framework/util/log/dumper/HtcDumperFactory;->sConfigurationDumper:Lcom/android/settings/framework/util/log/dumper/HtcIDumper;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/android/settings/framework/util/log/dumper/HtcConfigurationDumper;

    invoke-direct {v0}, Lcom/android/settings/framework/util/log/dumper/HtcConfigurationDumper;-><init>()V

    sput-object v0, Lcom/android/settings/framework/util/log/dumper/HtcDumperFactory;->sConfigurationDumper:Lcom/android/settings/framework/util/log/dumper/HtcIDumper;

    .line 49
    :cond_0
    sget-object v0, Lcom/android/settings/framework/util/log/dumper/HtcDumperFactory;->sConfigurationDumper:Lcom/android/settings/framework/util/log/dumper/HtcIDumper;

    return-object v0
.end method

.method public static getContextDumper()Lcom/android/settings/framework/util/log/dumper/HtcIDumper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/settings/framework/util/log/dumper/HtcIDumper",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    sget-object v0, Lcom/android/settings/framework/util/log/dumper/HtcDumperFactory;->sContextDumper:Lcom/android/settings/framework/util/log/dumper/HtcIDumper;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/android/settings/framework/util/log/dumper/HtcContextDumper;

    invoke-direct {v0}, Lcom/android/settings/framework/util/log/dumper/HtcContextDumper;-><init>()V

    sput-object v0, Lcom/android/settings/framework/util/log/dumper/HtcDumperFactory;->sContextDumper:Lcom/android/settings/framework/util/log/dumper/HtcIDumper;

    .line 60
    :cond_0
    sget-object v0, Lcom/android/settings/framework/util/log/dumper/HtcDumperFactory;->sContextDumper:Lcom/android/settings/framework/util/log/dumper/HtcIDumper;

    return-object v0
.end method

.method public static getFieldDumper()Lcom/android/settings/framework/util/log/dumper/HtcIDumper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/settings/framework/util/log/dumper/HtcIDumper",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    sget-object v0, Lcom/android/settings/framework/util/log/dumper/HtcDumperFactory;->sFieldDumper:Lcom/android/settings/framework/util/log/dumper/HtcIDumper;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/android/settings/framework/util/log/dumper/HtcFieldDumper;

    invoke-direct {v0}, Lcom/android/settings/framework/util/log/dumper/HtcFieldDumper;-><init>()V

    sput-object v0, Lcom/android/settings/framework/util/log/dumper/HtcDumperFactory;->sFieldDumper:Lcom/android/settings/framework/util/log/dumper/HtcIDumper;

    .line 71
    :cond_0
    sget-object v0, Lcom/android/settings/framework/util/log/dumper/HtcDumperFactory;->sFieldDumper:Lcom/android/settings/framework/util/log/dumper/HtcIDumper;

    return-object v0
.end method

.method public static getIntentDumper()Lcom/android/settings/framework/util/log/dumper/HtcIDumper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/settings/framework/util/log/dumper/HtcIDumper",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    sget-object v0, Lcom/android/settings/framework/util/log/dumper/HtcDumperFactory;->sIntentDumper:Lcom/android/settings/framework/util/log/dumper/HtcIDumper;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lcom/android/settings/framework/util/log/dumper/HtcIntentDumper;

    invoke-direct {v0}, Lcom/android/settings/framework/util/log/dumper/HtcIntentDumper;-><init>()V

    sput-object v0, Lcom/android/settings/framework/util/log/dumper/HtcDumperFactory;->sIntentDumper:Lcom/android/settings/framework/util/log/dumper/HtcIDumper;

    .line 82
    :cond_0
    sget-object v0, Lcom/android/settings/framework/util/log/dumper/HtcDumperFactory;->sIntentDumper:Lcom/android/settings/framework/util/log/dumper/HtcIDumper;

    return-object v0
.end method

.method public static getRunningServiceInfoDumper()Lcom/android/settings/framework/util/log/dumper/HtcIDumper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/settings/framework/util/log/dumper/HtcIDumper",
            "<",
            "Landroid/app/ActivityManager$RunningServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    sget-object v0, Lcom/android/settings/framework/util/log/dumper/HtcDumperFactory;->sRunningServiceInfoDumper:Lcom/android/settings/framework/util/log/dumper/HtcIDumper;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lcom/android/settings/framework/util/log/dumper/HtcRunningServiceInfoDumper;

    invoke-direct {v0}, Lcom/android/settings/framework/util/log/dumper/HtcRunningServiceInfoDumper;-><init>()V

    sput-object v0, Lcom/android/settings/framework/util/log/dumper/HtcDumperFactory;->sRunningServiceInfoDumper:Lcom/android/settings/framework/util/log/dumper/HtcIDumper;

    .line 93
    :cond_0
    sget-object v0, Lcom/android/settings/framework/util/log/dumper/HtcDumperFactory;->sRunningServiceInfoDumper:Lcom/android/settings/framework/util/log/dumper/HtcIDumper;

    return-object v0
.end method

.method public static getUriDumper()Lcom/android/settings/framework/util/log/dumper/HtcIDumper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/settings/framework/util/log/dumper/HtcIDumper",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    sget-object v0, Lcom/android/settings/framework/util/log/dumper/HtcDumperFactory;->sUriDumper:Lcom/android/settings/framework/util/log/dumper/HtcIDumper;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lcom/android/settings/framework/util/log/dumper/HtcUriDumper;

    invoke-direct {v0}, Lcom/android/settings/framework/util/log/dumper/HtcUriDumper;-><init>()V

    sput-object v0, Lcom/android/settings/framework/util/log/dumper/HtcDumperFactory;->sUriDumper:Lcom/android/settings/framework/util/log/dumper/HtcIDumper;

    .line 104
    :cond_0
    sget-object v0, Lcom/android/settings/framework/util/log/dumper/HtcDumperFactory;->sUriDumper:Lcom/android/settings/framework/util/log/dumper/HtcIDumper;

    return-object v0
.end method
