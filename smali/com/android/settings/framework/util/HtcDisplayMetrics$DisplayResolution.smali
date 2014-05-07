.class public final enum Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;
.super Ljava/lang/Enum;
.source "HtcDisplayMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/util/HtcDisplayMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DisplayResolution"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;

.field public static final enum FULLHD:Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;

.field public static final enum HD:Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;

.field public static final enum QHD:Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;

.field public static final enum UNKNOWN:Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;

.field public static final enum VGA:Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;

.field public static final enum WVGA:Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;

.field public static final enum WXGA:Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;

.field public static final enum XGA:Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;


# instance fields
.field private mHeight:I

.field private mName:Ljava/lang/String;

.field private mScreenDensity:Ljava/lang/String;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;

    const-string v1, "FULLHD"

    const-string v3, "Full High Definition"

    const/16 v4, 0x780

    const/16 v5, 0x438

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;->FULLHD:Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;

    new-instance v3, Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;

    const-string v4, "WXGA"

    const-string v6, "Wide XGA"

    const/16 v7, 0x500

    const/16 v8, 0x300

    move v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;->WXGA:Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;

    new-instance v3, Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;

    const-string v4, "HD"

    const-string v6, "High Definition"

    const/16 v7, 0x500

    const/16 v8, 0x2d0

    move v5, v10

    invoke-direct/range {v3 .. v8}, Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;->HD:Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;

    new-instance v3, Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;

    const-string v4, "XGA"

    const-string v6, "Extended Graphics Array"

    const/16 v7, 0x400

    const/16 v8, 0x300

    move v5, v11

    invoke-direct/range {v3 .. v8}, Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;->XGA:Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;

    new-instance v3, Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;

    const-string v4, "WVGA"

    const-string v6, "Wide VGA"

    const/16 v7, 0x320

    const/16 v8, 0x1e0

    move v5, v12

    invoke-direct/range {v3 .. v8}, Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;->WVGA:Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;

    new-instance v3, Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;

    const-string v4, "QHD"

    const/4 v5, 0x5

    const-string v6, "Quarter High Definition"

    const/16 v7, 0x3c0

    const/16 v8, 0x280

    invoke-direct/range {v3 .. v8}, Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;->QHD:Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;

    new-instance v3, Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;

    const-string v4, "VGA"

    const/4 v5, 0x6

    const-string v6, "Video Graphics Array"

    const/16 v7, 0x280

    const/16 v8, 0x1e0

    invoke-direct/range {v3 .. v8}, Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;->VGA:Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;

    new-instance v3, Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;

    const-string v4, "UNKNOWN"

    const/4 v5, 0x7

    const-string v6, "UNKNOWN"

    move v7, v2

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;->UNKNOWN:Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;

    sget-object v1, Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;->FULLHD:Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;->WXGA:Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;

    aput-object v1, v0, v9

    sget-object v1, Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;->HD:Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;

    aput-object v1, v0, v10

    sget-object v1, Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;->XGA:Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;

    aput-object v1, v0, v11

    sget-object v1, Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;->WVGA:Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;

    aput-object v1, v0, v12

    const/4 v1, 0x5

    sget-object v2, Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;->QHD:Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;->VGA:Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;->UNKNOWN:Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;->$VALUES:[Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const-string v0, "default"

    iput-object v0, p0, Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;->mScreenDensity:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;->mName:Ljava/lang/String;

    iput p4, p0, Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;->mHeight:I

    iput p5, p0, Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;->mWidth:I

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;->mScreenDensity:Ljava/lang/String;

    return-object p1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;
    .locals 1

    const-class v0, Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;
    .locals 1

    sget-object v0, Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;->$VALUES:[Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;

    return-object v0
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;->mHeight:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenDensity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;->mScreenDensity:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;->mWidth:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", density:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/framework/util/HtcDisplayMetrics$DisplayResolution;->mScreenDensity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
