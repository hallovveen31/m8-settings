.class final enum Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;
.super Ljava/lang/Enum;
.source "HtcInfraredState.java"

# interfaces
.implements Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$HtcAbstractState;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;",
        ">;",
        "Lcom/android/settings/framework/core/HtcAbsWidgetEnabler$HtcAbstractState;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;

.field public static final enum STATE_ERROR:Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;

.field public static final enum STATE_INIT:Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;

.field public static final enum STATE_OFF:Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;

.field public static final enum STATE_ON:Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;

.field public static final enum STATE_SYNC:Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;

.field public static final enum STATE_TURNING_OFF:Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;

.field public static final enum STATE_TURNING_ON:Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;

    const-string v1, "STATE_ERROR"

    invoke-direct {v0, v1, v3}, Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;->STATE_ERROR:Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;

    new-instance v0, Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;

    const-string v1, "STATE_INIT"

    invoke-direct {v0, v1, v4}, Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;->STATE_INIT:Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;

    new-instance v0, Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;

    const-string v1, "STATE_SYNC"

    invoke-direct {v0, v1, v5}, Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;->STATE_SYNC:Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;

    new-instance v0, Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;

    const-string v1, "STATE_OFF"

    invoke-direct {v0, v1, v6}, Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;->STATE_OFF:Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;

    new-instance v0, Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;

    const-string v1, "STATE_TURNING_ON"

    invoke-direct {v0, v1, v7}, Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;->STATE_TURNING_ON:Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;

    new-instance v0, Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;

    const-string v1, "STATE_ON"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;->STATE_ON:Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;

    new-instance v0, Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;

    const-string v1, "STATE_TURNING_OFF"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;->STATE_TURNING_OFF:Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;

    sget-object v1, Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;->STATE_ERROR:Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;->STATE_INIT:Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;->STATE_SYNC:Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;->STATE_OFF:Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;->STATE_TURNING_ON:Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;->STATE_ON:Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;->STATE_TURNING_OFF:Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;->$VALUES:[Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;

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

.method public static getBaseState(I)Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;
    .locals 1

    packed-switch p0, :pswitch_data_0

    sget-object v0, Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;->STATE_ERROR:Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;->STATE_OFF:Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;->STATE_TURNING_ON:Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;->STATE_ON:Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;->STATE_TURNING_OFF:Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;
    .locals 1

    const-class v0, Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;
    .locals 1

    sget-object v0, Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;->$VALUES:[Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/framework/core/wireless/infrared/HtcInfraredState;

    return-object v0
.end method
