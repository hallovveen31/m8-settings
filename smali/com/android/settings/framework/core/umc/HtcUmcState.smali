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

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/settings/framework/core/umc/HtcUmcState;

    const-string v1, "STATE_ERROR"

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/core/umc/HtcUmcState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/core/umc/HtcUmcState;->STATE_ERROR:Lcom/android/settings/framework/core/umc/HtcUmcState;

    new-instance v0, Lcom/android/settings/framework/core/umc/HtcUmcState;

    const-string v1, "STATE_INIT"

    invoke-direct {v0, v1, v3}, Lcom/android/settings/framework/core/umc/HtcUmcState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/core/umc/HtcUmcState;->STATE_INIT:Lcom/android/settings/framework/core/umc/HtcUmcState;

    new-instance v0, Lcom/android/settings/framework/core/umc/HtcUmcState;

    const-string v1, "STATE_OFF"

    invoke-direct {v0, v1, v4}, Lcom/android/settings/framework/core/umc/HtcUmcState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/core/umc/HtcUmcState;->STATE_OFF:Lcom/android/settings/framework/core/umc/HtcUmcState;

    new-instance v0, Lcom/android/settings/framework/core/umc/HtcUmcState;

    const-string v1, "STATE_ON"

    invoke-direct {v0, v1, v5}, Lcom/android/settings/framework/core/umc/HtcUmcState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/core/umc/HtcUmcState;->STATE_ON:Lcom/android/settings/framework/core/umc/HtcUmcState;

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/framework/core/umc/HtcUmcState;
    .locals 1

    const-class v0, Lcom/android/settings/framework/core/umc/HtcUmcState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/core/umc/HtcUmcState;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/framework/core/umc/HtcUmcState;
    .locals 1

    sget-object v0, Lcom/android/settings/framework/core/umc/HtcUmcState;->$VALUES:[Lcom/android/settings/framework/core/umc/HtcUmcState;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/framework/core/umc/HtcUmcState;

    return-object v0
.end method
