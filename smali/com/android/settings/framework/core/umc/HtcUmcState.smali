.class final enum Lcom/android/settings/framework/core/umc/HtcUmcState;
.super Ljava/lang/Enum;
.source "HtcUmcState.java"

# interfaces
.implements Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$HtcAbstractState;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/framework/core/umc/HtcUmcState;",
        ">;",
        "Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$HtcAbstractState;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/framework/core/umc/HtcUmcState;

.field public static final enum STATE_ERROR:Lcom/android/settings/framework/core/umc/HtcUmcState;

.field public static final enum STATE_INIT:Lcom/android/settings/framework/core/umc/HtcUmcState;

.field public static final enum STATE_OFF:Lcom/android/settings/framework/core/umc/HtcUmcState;

.field public static final enum STATE_ON:Lcom/android/settings/framework/core/umc/HtcUmcState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    new-instance v0, Lcom/android/settings/framework/core/umc/HtcUmcState;

    const-string v1, "STATE_ERROR"

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/core/umc/HtcUmcState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/core/umc/HtcUmcState;->STATE_ERROR:Lcom/android/settings/framework/core/umc/HtcUmcState;

    .line 23
    new-instance v0, Lcom/android/settings/framework/core/umc/HtcUmcState;

    const-string v1, "STATE_INIT"

    invoke-direct {v0, v1, v3}, Lcom/android/settings/framework/core/umc/HtcUmcState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/core/umc/HtcUmcState;->STATE_INIT:Lcom/android/settings/framework/core/umc/HtcUmcState;

    .line 32
    new-instance v0, Lcom/android/settings/framework/core/umc/HtcUmcState;

    const-string v1, "STATE_OFF"

    invoke-direct {v0, v1, v4}, Lcom/android/settings/framework/core/umc/HtcUmcState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/core/umc/HtcUmcState;->STATE_OFF:Lcom/android/settings/framework/core/umc/HtcUmcState;

    .line 35
    new-instance v0, Lcom/android/settings/framework/core/umc/HtcUmcState;

    const-string v1, "STATE_ON"

    invoke-direct {v0, v1, v5}, Lcom/android/settings/framework/core/umc/HtcUmcState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/core/umc/HtcUmcState;->STATE_ON:Lcom/android/settings/framework/core/umc/HtcUmcState;

    .line 11
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/settings/framework/core/umc/HtcUmcState;

    sget-object v1, Lcom/android/settings/framework/core/umc/HtcUmcState;->STATE_ERROR:Lcom/android/settings/framework/core/umc/HtcUmcState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/framework/core/umc/HtcUmcState;->STATE_INIT:Lcom/android/settings/framework/core/umc/HtcUmcState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/framework/core/umc/HtcUmcState;->STATE_OFF:Lcom/android/settings/framework/core/umc/HtcUmcState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings/framework/core/umc/HtcUmcState;->STATE_ON:Lcom/android/settings/framework/core/umc/HtcUmcState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/settings/framework/core/umc/HtcUmcState;->$VALUES:[Lcom/android/settings/framework/core/umc/HtcUmcState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/framework/core/umc/HtcUmcState;
    .locals 1
    .parameter "name"

    .prologue
    .line 11
    const-class v0, Lcom/android/settings/framework/core/umc/HtcUmcState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/core/umc/HtcUmcState;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/framework/core/umc/HtcUmcState;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/android/settings/framework/core/umc/HtcUmcState;->$VALUES:[Lcom/android/settings/framework/core/umc/HtcUmcState;

    invoke-virtual {v0}, [Lcom/android/settings/framework/core/umc/HtcUmcState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/framework/core/umc/HtcUmcState;

    return-object v0
.end method
