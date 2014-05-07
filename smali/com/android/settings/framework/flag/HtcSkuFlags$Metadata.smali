.class public Lcom/android/settings/framework/flag/HtcSkuFlags$Metadata;
.super Ljava/lang/Object;
.source "HtcSkuFlags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/flag/HtcSkuFlags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Metadata"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mRcmsName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/flag/HtcSkuFlags$Metadata;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/flag/HtcSkuFlags$Metadata;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 618
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 619
    invoke-direct {p0}, Lcom/android/settings/framework/flag/HtcSkuFlags$Metadata;->parseRcmsName()V

    .line 620
    return-void
.end method

.method public static getMetadata(Landroid/content/Context;)Lcom/android/settings/framework/flag/HtcSkuFlags$Metadata;
    .locals 1
    .parameter "context"

    .prologue
    .line 630
    new-instance v0, Lcom/android/settings/framework/flag/HtcSkuFlags$Metadata;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/flag/HtcSkuFlags$Metadata;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private parseRcmsName()V
    .locals 3

    .prologue
    .line 638
    const-string v2, "ro.build.project"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 640
    .local v0, rcmsName:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 641
    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 642
    .local v1, splitAt:I
    if-lez v1, :cond_0

    .line 645
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/framework/flag/HtcSkuFlags$Metadata;->mRcmsName:Ljava/lang/String;

    .line 648
    .end local v1           #splitAt:I
    :cond_0
    return-void
.end method

.method private static toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 674
    if-eqz p0, :cond_0

    .line 675
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 677
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getRcmsName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 657
    iget-object v0, p0, Lcom/android/settings/framework/flag/HtcSkuFlags$Metadata;->mRcmsName:Ljava/lang/String;

    return-object v0
.end method

.method public log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 661
    sget-object v0, Lcom/android/settings/framework/flag/HtcSkuFlags$Metadata;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 666
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 668
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "Metadata:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 669
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " - mRcmsName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/framework/flag/HtcSkuFlags$Metadata;->mRcmsName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
