.class public Lcom/android/settings/framework/core/about/legal/HtcRegulatoryAssetList$AssetInfo;
.super Ljava/lang/Object;
.source "HtcRegulatoryAssetList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/core/about/legal/HtcRegulatoryAssetList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AssetInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/core/about/legal/HtcRegulatoryAssetList$AssetInfo$IndexComparator;
    }
.end annotation


# instance fields
.field public mIndex:I

.field public mPath:Ljava/lang/String;


# direct methods
.method private constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "index"
    .parameter "path"

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput p1, p0, Lcom/android/settings/framework/core/about/legal/HtcRegulatoryAssetList$AssetInfo;->mIndex:I

    .line 70
    iput-object p2, p0, Lcom/android/settings/framework/core/about/legal/HtcRegulatoryAssetList$AssetInfo;->mPath:Ljava/lang/String;

    .line 71
    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;Lcom/android/settings/framework/core/about/legal/HtcRegulatoryAssetList$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/core/about/legal/HtcRegulatoryAssetList$AssetInfo;-><init>(ILjava/lang/String;)V

    return-void
.end method
