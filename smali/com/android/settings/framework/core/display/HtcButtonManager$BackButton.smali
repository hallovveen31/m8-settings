.class public final enum Lcom/android/settings/framework/core/display/HtcButtonManager$BackButton;
.super Ljava/lang/Enum;
.source "HtcButtonManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/core/display/HtcButtonManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BackButton"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/framework/core/display/HtcButtonManager$BackButton;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/framework/core/display/HtcButtonManager$BackButton;

.field public static final enum ALWAYS_GO_BACK:Lcom/android/settings/framework/core/display/HtcButtonManager$BackButton;

.field public static final enum PRESS_FOR_BACK_AND_LONG_PRESS_FOR_MENU:Lcom/android/settings/framework/core/display/HtcButtonManager$BackButton;


# instance fields
.field private mIsNavigationButtonVisible:Z

.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/settings/framework/core/display/HtcButtonManager$BackButton;

    const-string v1, "ALWAYS_GO_BACK"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/android/settings/framework/core/display/HtcButtonManager$BackButton;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/settings/framework/core/display/HtcButtonManager$BackButton;->ALWAYS_GO_BACK:Lcom/android/settings/framework/core/display/HtcButtonManager$BackButton;

    new-instance v0, Lcom/android/settings/framework/core/display/HtcButtonManager$BackButton;

    const-string v1, "PRESS_FOR_BACK_AND_LONG_PRESS_FOR_MENU"

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/android/settings/framework/core/display/HtcButtonManager$BackButton;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/settings/framework/core/display/HtcButtonManager$BackButton;->PRESS_FOR_BACK_AND_LONG_PRESS_FOR_MENU:Lcom/android/settings/framework/core/display/HtcButtonManager$BackButton;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/settings/framework/core/display/HtcButtonManager$BackButton;

    sget-object v1, Lcom/android/settings/framework/core/display/HtcButtonManager$BackButton;->ALWAYS_GO_BACK:Lcom/android/settings/framework/core/display/HtcButtonManager$BackButton;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/framework/core/display/HtcButtonManager$BackButton;->PRESS_FOR_BACK_AND_LONG_PRESS_FOR_MENU:Lcom/android/settings/framework/core/display/HtcButtonManager$BackButton;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/settings/framework/core/display/HtcButtonManager$BackButton;->$VALUES:[Lcom/android/settings/framework/core/display/HtcButtonManager$BackButton;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/settings/framework/core/display/HtcButtonManager$BackButton;->mValue:I

    iput-boolean p4, p0, Lcom/android/settings/framework/core/display/HtcButtonManager$BackButton;->mIsNavigationButtonVisible:Z

    return-void
.end method

.method public static final getDefaultBackButton()Lcom/android/settings/framework/core/display/HtcButtonManager$BackButton;
    .locals 1

    sget-object v0, Lcom/android/settings/framework/core/display/HtcButtonManager$BackButton;->ALWAYS_GO_BACK:Lcom/android/settings/framework/core/display/HtcButtonManager$BackButton;

    return-object v0
.end method

.method public static toBackButton(I)Lcom/android/settings/framework/core/display/HtcButtonManager$BackButton;
    .locals 1

    packed-switch p0, :pswitch_data_0

    sget-object v0, Lcom/android/settings/framework/core/display/HtcButtonManager$BackButton;->ALWAYS_GO_BACK:Lcom/android/settings/framework/core/display/HtcButtonManager$BackButton;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/android/settings/framework/core/display/HtcButtonManager$BackButton;->ALWAYS_GO_BACK:Lcom/android/settings/framework/core/display/HtcButtonManager$BackButton;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/android/settings/framework/core/display/HtcButtonManager$BackButton;->PRESS_FOR_BACK_AND_LONG_PRESS_FOR_MENU:Lcom/android/settings/framework/core/display/HtcButtonManager$BackButton;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static toBackButton(Ljava/lang/String;)Lcom/android/settings/framework/core/display/HtcButtonManager$BackButton;
    .locals 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/settings/framework/core/display/HtcButtonManager$BackButton;->getDefaultBackButton()Lcom/android/settings/framework/core/display/HtcButtonManager$BackButton;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/android/settings/framework/core/display/HtcButtonManager$BackButton;->toBackButton(I)Lcom/android/settings/framework/core/display/HtcButtonManager$BackButton;
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

    const-string v3, "value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/settings/framework/util/log/HtcLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Lcom/android/settings/framework/core/display/HtcButtonManager$BackButton;->getDefaultBackButton()Lcom/android/settings/framework/core/display/HtcButtonManager$BackButton;

    move-result-object v1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/framework/core/display/HtcButtonManager$BackButton;
    .locals 1

    const-class v0, Lcom/android/settings/framework/core/display/HtcButtonManager$BackButton;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/core/display/HtcButtonManager$BackButton;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/framework/core/display/HtcButtonManager$BackButton;
    .locals 1

    sget-object v0, Lcom/android/settings/framework/core/display/HtcButtonManager$BackButton;->$VALUES:[Lcom/android/settings/framework/core/display/HtcButtonManager$BackButton;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/framework/core/display/HtcButtonManager$BackButton;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/android/settings/framework/core/display/HtcButtonManager$BackButton;->mValue:I

    return v0
.end method

.method public isNavigationButtonVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/framework/core/display/HtcButtonManager$BackButton;->mIsNavigationButtonVisible:Z

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

    iget v1, p0, Lcom/android/settings/framework/core/display/HtcButtonManager$BackButton;->mValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsNavigationButtonVisible: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/framework/core/display/HtcButtonManager$BackButton;->mIsNavigationButtonVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
