.class public Lcom/android/settings/srci/HtcSettingsSrciEntryView;
.super Landroid/view/View;
.source "HtcSettingsSrciEntryView.java"

# interfaces
.implements Lcom/htc/lib1/autotest/middleware/ISREntry;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mController:Lcom/android/settings/srci/HtcSettingsCsrController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/settings/srci/HtcSettingsSrciEntryView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/srci/HtcSettingsSrciEntryView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/srci/HtcSettingsSrciEntryView;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getSRController()Lcom/htc/lib1/autotest/middleware/CSRController;
    .locals 3

    iget-object v0, p0, Lcom/android/settings/srci/HtcSettingsSrciEntryView;->mController:Lcom/android/settings/srci/HtcSettingsCsrController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/srci/HtcSettingsCsrController;

    iget-object v1, p0, Lcom/android/settings/srci/HtcSettingsSrciEntryView;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/settings/srci/HtcSettingsCsrController;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/srci/HtcSettingsSrciEntryView;->mController:Lcom/android/settings/srci/HtcSettingsCsrController;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/srci/HtcSettingsSrciEntryView;->mController:Lcom/android/settings/srci/HtcSettingsCsrController;

    return-object v0
.end method
