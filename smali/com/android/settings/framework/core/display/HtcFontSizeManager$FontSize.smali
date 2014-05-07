.class public final enum Lcom/android/settings/framework/core/display/HtcFontSizeManager$FontSize;
.super Ljava/lang/Enum;
.source "HtcFontSizeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/core/display/HtcFontSizeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FontSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/framework/core/display/HtcFontSizeManager$FontSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/framework/core/display/HtcFontSizeManager$FontSize;

.field public static final enum EXTRA_LARGE:Lcom/android/settings/framework/core/display/HtcFontSizeManager$FontSize;

.field public static final enum HUGE:Lcom/android/settings/framework/core/display/HtcFontSizeManager$FontSize;

.field public static final enum LARGE:Lcom/android/settings/framework/core/display/HtcFontSizeManager$FontSize;

.field public static final enum MEDIUM:Lcom/android/settings/framework/core/display/HtcFontSizeManager$FontSize;

.field public static final enum SMALL:Lcom/android/settings/framework/core/display/HtcFontSizeManager$FontSize;


# instance fields
.field private mGoogleFontSize:F

.field private mHtcFontSize:I

.field private mResourceFolderName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    const/4 v2, 0x0

    const v15, 0x3fa66666

    const/4 v11, 0x4

    const/4 v7, 0x3

    const/4 v3, 0x2

    .line 44
    new-instance v0, Lcom/android/settings/framework/core/display/HtcFontSizeManager$FontSize;

    const-string v1, "SMALL"

    const v4, 0x3f59999a

    const-string v5, "values-xxhdpi-sfont"

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/framework/core/display/HtcFontSizeManager$FontSize;-><init>(Ljava/lang/String;IIFLjava/lang/String;)V

    sput-object v0, Lcom/android/settings/framework/core/display/HtcFontSizeManager$FontSize;->SMALL:Lcom/android/settings/framework/core/display/HtcFontSizeManager$FontSize;

    .line 45
    new-instance v4, Lcom/android/settings/framework/core/display/HtcFontSizeManager$FontSize;

    const-string v5, "MEDIUM"

    const/4 v6, 0x1

    const/high16 v8, 0x3f80

    const-string v9, "values-xxhdpi"

    invoke-direct/range {v4 .. v9}, Lcom/android/settings/framework/core/display/HtcFontSizeManager$FontSize;-><init>(Ljava/lang/String;IIFLjava/lang/String;)V

    sput-object v4, Lcom/android/settings/framework/core/display/HtcFontSizeManager$FontSize;->MEDIUM:Lcom/android/settings/framework/core/display/HtcFontSizeManager$FontSize;

    .line 46
    new-instance v8, Lcom/android/settings/framework/core/display/HtcFontSizeManager$FontSize;

    const-string v9, "LARGE"

    const v12, 0x3f933333

    const-string v13, "values-xxhdpi-lfont"

    move v10, v3

    invoke-direct/range {v8 .. v13}, Lcom/android/settings/framework/core/display/HtcFontSizeManager$FontSize;-><init>(Ljava/lang/String;IIFLjava/lang/String;)V

    sput-object v8, Lcom/android/settings/framework/core/display/HtcFontSizeManager$FontSize;->LARGE:Lcom/android/settings/framework/core/display/HtcFontSizeManager$FontSize;

    .line 47
    new-instance v5, Lcom/android/settings/framework/core/display/HtcFontSizeManager$FontSize;

    const-string v6, "EXTRA_LARGE"

    const/4 v8, 0x5

    const-string v10, "values-xxhdpi-xlfont"

    move v9, v15

    invoke-direct/range {v5 .. v10}, Lcom/android/settings/framework/core/display/HtcFontSizeManager$FontSize;-><init>(Ljava/lang/String;IIFLjava/lang/String;)V

    sput-object v5, Lcom/android/settings/framework/core/display/HtcFontSizeManager$FontSize;->EXTRA_LARGE:Lcom/android/settings/framework/core/display/HtcFontSizeManager$FontSize;

    .line 48
    new-instance v9, Lcom/android/settings/framework/core/display/HtcFontSizeManager$FontSize;

    const-string v10, "HUGE"

    const/4 v12, 0x6

    const-string v14, "values-xxhdpi-xxlfont"

    move v13, v15

    invoke-direct/range {v9 .. v14}, Lcom/android/settings/framework/core/display/HtcFontSizeManager$FontSize;-><init>(Ljava/lang/String;IIFLjava/lang/String;)V

    sput-object v9, Lcom/android/settings/framework/core/display/HtcFontSizeManager$FontSize;->HUGE:Lcom/android/settings/framework/core/display/HtcFontSizeManager$FontSize;

    .line 43
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/settings/framework/core/display/HtcFontSizeManager$FontSize;

    sget-object v1, Lcom/android/settings/framework/core/display/HtcFontSizeManager$FontSize;->SMALL:Lcom/android/settings/framework/core/display/HtcFontSizeManager$FontSize;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Lcom/android/settings/framework/core/display/HtcFontSizeManager$FontSize;->MEDIUM:Lcom/android/settings/framework/core/display/HtcFontSizeManager$FontSize;

    aput-object v2, v0, v1

    sget-object v1, Lcom/android/settings/framework/core/display/HtcFontSizeManager$FontSize;->LARGE:Lcom/android/settings/framework/core/display/HtcFontSizeManager$FontSize;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/framework/core/display/HtcFontSizeManager$FontSize;->EXTRA_LARGE:Lcom/android/settings/framework/core/display/HtcFontSizeManager$FontSize;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/settings/framework/core/display/HtcFontSizeManager$FontSize;->HUGE:Lcom/android/settings/framework/core/display/HtcFontSizeManager$FontSize;

    aput-object v1, v0, v11

    sput-object v0, Lcom/android/settings/framework/core/display/HtcFontSizeManager$FontSize;->$VALUES:[Lcom/android/settings/framework/core/display/HtcFontSizeManager$FontSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIFLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "htcFontSize"
    .parameter "googleFontSize"
    .parameter "resourceFolderName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IF",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 63
    iput p3, p0, Lcom/android/settings/framework/core/display/HtcFontSizeManager$FontSize;->mHtcFontSize:I

    .line 64
    iput p4, p0, Lcom/android/settings/framework/core/display/HtcFontSizeManager$FontSize;->mGoogleFontSize:F

    .line 65
    iput-object p5, p0, Lcom/android/settings/framework/core/display/HtcFontSizeManager$FontSize;->mResourceFolderName:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public static findFontSize(I)Lcom/android/settings/framework/core/display/HtcFontSizeManager$FontSize;
    .locals 5
    .parameter "htcFontSize"

    .prologue
    .line 127
    invoke-static {}, Lcom/android/settings/framework/core/display/HtcFontSizeManager$FontSize;->values()[Lcom/android/settings/framework/core/display/HtcFontSizeManager$FontSize;

    move-result-object v1

    .line 130
    .local v1, list:[Lcom/android/settings/framework/core/display/HtcFontSizeManager$FontSize;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 131
    aget-object v2, v1, v0

    invoke-virtual {v2}, Lcom/android/settings/framework/core/display/HtcFontSizeManager$FontSize;->getHtcFontSize()I

    move-result v2

    if-ne v2, p0, :cond_0

    .line 132
    aget-object v2, v1, v0

    .line 143
    :goto_1
    return-object v2

    .line 130
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    :cond_1
    invoke-static {}, Lcom/android/settings/framework/core/display/HtcFontSizeManager;->access$100()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 137
    array-length v2, v1

    if-ne v0, v2, :cond_2

    .line 138
    invoke-static {}, Lcom/android/settings/framework/core/display/HtcFontSizeManager;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Did not find the font-size value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settings/framework/util/log/HtcLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static findFontSize(Ljava/lang/String;)Lcom/android/settings/framework/core/display/HtcFontSizeManager$FontSize;
    .locals 5
    .parameter "name"

    .prologue
    .line 107
    const/4 v1, 0x0

    .line 110
    .local v1, fontSize:Lcom/android/settings/framework/core/display/HtcFontSizeManager$FontSize;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/framework/core/display/HtcFontSizeManager$FontSize;->valueOf(Ljava/lang/String;)Lcom/android/settings/framework/core/display/HtcFontSizeManager$FontSize;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 115
    :goto_0
    return-object v1

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lcom/android/settings/framework/core/display/HtcFontSizeManager;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Did not find the font-size name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/android/settings/framework/util/log/HtcLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/framework/core/display/HtcFontSizeManager$FontSize;
    .locals 1
    .parameter "name"

    .prologue
    .line 43
    const-class v0, Lcom/android/settings/framework/core/display/HtcFontSizeManager$FontSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/core/display/HtcFontSizeManager$FontSize;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/framework/core/display/HtcFontSizeManager$FontSize;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/android/settings/framework/core/display/HtcFontSizeManager$FontSize;->$VALUES:[Lcom/android/settings/framework/core/display/HtcFontSizeManager$FontSize;

    invoke-virtual {v0}, [Lcom/android/settings/framework/core/display/HtcFontSizeManager$FontSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/framework/core/display/HtcFontSizeManager$FontSize;

    return-object v0
.end method


# virtual methods
.method public getGoogleFontSize()F
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/android/settings/framework/core/display/HtcFontSizeManager$FontSize;->mGoogleFontSize:F

    return v0
.end method

.method public getHtcFontSize()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/android/settings/framework/core/display/HtcFontSizeManager$FontSize;->mHtcFontSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/framework/core/display/HtcFontSizeManager$FontSize;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " {HtcFontSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/framework/core/display/HtcFontSizeManager$FontSize;->mHtcFontSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", GoogleFontSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/framework/core/display/HtcFontSizeManager$FontSize;->mGoogleFontSize:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ResourceFolderName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/framework/core/display/HtcFontSizeManager$FontSize;->mResourceFolderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
