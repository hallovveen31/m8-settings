.class Lcom/android/settings/wifi/EasyWifiSettings$ApplicationView;
.super Ljava/lang/Object;
.source "EasyWifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/EasyWifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ApplicationView"
.end annotation


# instance fields
.field className:Ljava/lang/String;

.field info:Landroid/content/pm/ApplicationInfo;

.field isWPS:Z

.field packageName:Ljava/lang/String;

.field summaryRes:I

.field final synthetic this$0:Lcom/android/settings/wifi/EasyWifiSettings;

.field titleRes:I


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/EasyWifiSettings;)V
    .locals 1
    .parameter

    .prologue
    .line 434
    iput-object p1, p0, Lcom/android/settings/wifi/EasyWifiSettings$ApplicationView;->this$0:Lcom/android/settings/wifi/EasyWifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 435
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/EasyWifiSettings$ApplicationView;->isWPS:Z

    return-void
.end method


# virtual methods
.method public setClassName(Ljava/lang/String;)V
    .locals 0
    .parameter "str"

    .prologue
    .line 451
    iput-object p1, p0, Lcom/android/settings/wifi/EasyWifiSettings$ApplicationView;->className:Ljava/lang/String;

    .line 452
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .parameter "str"

    .prologue
    .line 447
    iput-object p1, p0, Lcom/android/settings/wifi/EasyWifiSettings$ApplicationView;->packageName:Ljava/lang/String;

    .line 448
    return-void
.end method

.method public setSummaryRes(I)V
    .locals 0
    .parameter "res"

    .prologue
    .line 459
    iput p1, p0, Lcom/android/settings/wifi/EasyWifiSettings$ApplicationView;->summaryRes:I

    .line 460
    return-void
.end method

.method public setTitleRes(I)V
    .locals 0
    .parameter "res"

    .prologue
    .line 455
    iput p1, p0, Lcom/android/settings/wifi/EasyWifiSettings$ApplicationView;->titleRes:I

    .line 456
    return-void
.end method

.method public setWPSflag(Z)V
    .locals 0
    .parameter "wps"

    .prologue
    .line 443
    iput-boolean p1, p0, Lcom/android/settings/wifi/EasyWifiSettings$ApplicationView;->isWPS:Z

    .line 444
    return-void
.end method
