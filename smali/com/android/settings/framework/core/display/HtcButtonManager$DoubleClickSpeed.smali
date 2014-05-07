.class public final enum Lcom/android/settings/framework/core/display/HtcButtonManager$DoubleClickSpeed;
.super Ljava/lang/Enum;
.source "HtcButtonManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/core/display/HtcButtonManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DoubleClickSpeed"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/framework/core/display/HtcButtonManager$DoubleClickSpeed;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/framework/core/display/HtcButtonManager$DoubleClickSpeed; = null

.field public static final KEY:Ljava/lang/String; = "htc_key_double_click_interval"

.field public static final enum NORMAL:Lcom/android/settings/framework/core/display/HtcButtonManager$DoubleClickSpeed;

.field public static final enum SLOW:Lcom/android/settings/framework/core/display/HtcButtonManager$DoubleClickSpeed;

.field public static final enum VERY_SLOW:Lcom/android/settings/framework/core/display/HtcButtonManager$DoubleClickSpeed;


# instance fields
.field private mTextResId:I

.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/android/settings/framework/core/display/HtcButtonManager$DoubleClickSpeed;

    const-string v1, "NORMAL"

    const/16 v2, 0x96

    const v3, 0x7f0c016a

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/settings/framework/core/display/HtcButtonManager$DoubleClickSpeed;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/settings/framework/core/display/HtcButtonManager$DoubleClickSpeed;->NORMAL:Lcom/android/settings/framework/core/display/HtcButtonManager$DoubleClickSpeed;

    new-instance v0, Lcom/android/settings/framework/core/display/HtcButtonManager$DoubleClickSpeed;

    const-string v1, "SLOW"

    const/16 v2, 0xe1

    const v3, 0x7f0c016b

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/android/settings/framework/core/display/HtcButtonManager$DoubleClickSpeed;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/settings/framework/core/display/HtcButtonManager$DoubleClickSpeed;->SLOW:Lcom/android/settings/framework/core/display/HtcButtonManager$DoubleClickSpeed;

    new-instance v0, Lcom/android/settings/framework/core/display/HtcButtonManager$DoubleClickSpeed;

    const-string v1, "VERY_SLOW"

    const/16 v2, 0x12c

    const v3, 0x7f0c016c

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/android/settings/framework/core/display/HtcButtonManager$DoubleClickSpeed;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/settings/framework/core/display/HtcButtonManager$DoubleClickSpeed;->VERY_SLOW:Lcom/android/settings/framework/core/display/HtcButtonManager$DoubleClickSpeed;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/settings/framework/core/display/HtcButtonManager$DoubleClickSpeed;

    sget-object v1, Lcom/android/settings/framework/core/display/HtcButtonManager$DoubleClickSpeed;->NORMAL:Lcom/android/settings/framework/core/display/HtcButtonManager$DoubleClickSpeed;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings/framework/core/display/HtcButtonManager$DoubleClickSpeed;->SLOW:Lcom/android/settings/framework/core/display/HtcButtonManager$DoubleClickSpeed;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/settings/framework/core/display/HtcButtonManager$DoubleClickSpeed;->VERY_SLOW:Lcom/android/settings/framework/core/display/HtcButtonManager$DoubleClickSpeed;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/settings/framework/core/display/HtcButtonManager$DoubleClickSpeed;->$VALUES:[Lcom/android/settings/framework/core/display/HtcButtonManager$DoubleClickSpeed;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/settings/framework/core/display/HtcButtonManager$DoubleClickSpeed;->mValue:I

    iput p4, p0, Lcom/android/settings/framework/core/display/HtcButtonManager$DoubleClickSpeed;->mTextResId:I

    return-void
.end method

.method public static getDefault()Lcom/android/settings/framework/core/display/HtcButtonManager$DoubleClickSpeed;
    .locals 1

    sget-object v0, Lcom/android/settings/framework/core/display/HtcButtonManager$DoubleClickSpeed;->NORMAL:Lcom/android/settings/framework/core/display/HtcButtonManager$DoubleClickSpeed;

    return-object v0
.end method

.method public static getEntries(Landroid/content/Context;)[Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/android/settings/framework/core/display/HtcButtonManager$DoubleClickSpeed;->values()[Lcom/android/settings/framework/core/display/HtcButtonManager$DoubleClickSpeed;

    move-result-object v2

    array-length v3, v2

    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-object v3, v2, v1

    iget v3, v3, Lcom/android/settings/framework/core/display/HtcButtonManager$DoubleClickSpeed;->mTextResId:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getEntryValues(Landroid/content/Context;)[Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/android/settings/framework/core/display/HtcButtonManager$DoubleClickSpeed;->values()[Lcom/android/settings/framework/core/display/HtcButtonManager$DoubleClickSpeed;

    move-result-object v1

    array-length v3, v1

    new-array v2, v3, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    aget-object v3, v1, v0

    iget v3, v3, Lcom/android/settings/framework/core/display/HtcButtonManager$DoubleClickSpeed;->mValue:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public static toDoubleClickSpeed(I)Lcom/android/settings/framework/core/display/HtcButtonManager$DoubleClickSpeed;
    .locals 5

    invoke-static {}, Lcom/android/settings/framework/core/display/HtcButtonManager$DoubleClickSpeed;->values()[Lcom/android/settings/framework/core/display/HtcButtonManager$DoubleClickSpeed;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v2, v1, v0

    iget v2, v2, Lcom/android/settings/framework/core/display/HtcButtonManager$DoubleClickSpeed;->mValue:I

    if-ne v2, p0, :cond_0

    aget-object v2, v1, v0

    :goto_1
    return-object v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/settings/framework/core/display/HtcButtonManager;->access$100()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/settings/framework/core/display/HtcButtonManager;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "toDoubleClickSpeed("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Not found!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settings/framework/util/log/HtcLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {}, Lcom/android/settings/framework/core/display/HtcButtonManager$DoubleClickSpeed;->getDefault()Lcom/android/settings/framework/core/display/HtcButtonManager$DoubleClickSpeed;

    move-result-object v2

    goto :goto_1
.end method

.method public static toDoubleClickSpeed(Ljava/lang/String;)Lcom/android/settings/framework/core/display/HtcButtonManager$DoubleClickSpeed;
    .locals 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/settings/framework/core/display/HtcButtonManager;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "toDoubleClickSpeed("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    invoke-static {v1, v2, v3}, Lcom/android/settings/framework/util/log/HtcLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Lcom/android/settings/framework/core/display/HtcButtonManager$DoubleClickSpeed;->getDefault()Lcom/android/settings/framework/core/display/HtcButtonManager$DoubleClickSpeed;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/android/settings/framework/core/display/HtcButtonManager$DoubleClickSpeed;->toDoubleClickSpeed(I)Lcom/android/settings/framework/core/display/HtcButtonManager$DoubleClickSpeed;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/android/settings/framework/core/display/HtcButtonManager;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "toDoubleClickSpeed("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/settings/framework/util/log/HtcLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Lcom/android/settings/framework/core/display/HtcButtonManager$DoubleClickSpeed;->getDefault()Lcom/android/settings/framework/core/display/HtcButtonManager$DoubleClickSpeed;

    move-result-object v1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/framework/core/display/HtcButtonManager$DoubleClickSpeed;
    .locals 1

    const-class v0, Lcom/android/settings/framework/core/display/HtcButtonManager$DoubleClickSpeed;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/core/display/HtcButtonManager$DoubleClickSpeed;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/framework/core/display/HtcButtonManager$DoubleClickSpeed;
    .locals 1

    sget-object v0, Lcom/android/settings/framework/core/display/HtcButtonManager$DoubleClickSpeed;->$VALUES:[Lcom/android/settings/framework/core/display/HtcButtonManager$DoubleClickSpeed;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/framework/core/display/HtcButtonManager$DoubleClickSpeed;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/android/settings/framework/core/display/HtcButtonManager$DoubleClickSpeed;->mValue:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (mValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/framework/core/display/HtcButtonManager$DoubleClickSpeed;->mValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(ms) )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
