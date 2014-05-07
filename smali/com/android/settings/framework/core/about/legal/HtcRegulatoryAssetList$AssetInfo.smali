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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/settings/framework/core/about/legal/HtcRegulatoryAssetList$AssetInfo;->mIndex:I

    iput-object p2, p0, Lcom/android/settings/framework/core/about/legal/HtcRegulatoryAssetList$AssetInfo;->mPath:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;Lcom/android/settings/framework/core/about/legal/HtcRegulatoryAssetList$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/core/about/legal/HtcRegulatoryAssetList$AssetInfo;-><init>(ILjava/lang/String;)V

    return-void
.end method
