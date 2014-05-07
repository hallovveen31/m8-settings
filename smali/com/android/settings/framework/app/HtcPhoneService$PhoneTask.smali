.class public final enum Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;
.super Ljava/lang/Enum;
.source "HtcPhoneService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/app/HtcPhoneService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PhoneTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

.field public static final enum CDMA_ERI:Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

.field public static final enum CDMA_ICC:Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

.field public static final enum CDMA_IMEI:Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

.field public static final enum CDMA_IMEI_SV:Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

.field public static final enum CDMA_LIFE_TIME_TOTAL_CALL:Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

.field public static final enum CDMA_LIFE_TIME_TOTAL_DATA_RX:Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

.field public static final enum CDMA_LIFE_TIME_TOTAL_DATA_TX:Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

.field public static final enum CDMA_LIFE_TIME_TOTAL_MINS:Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

.field public static final enum CDMA_MEID:Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

.field public static final enum CDMA_NAI:Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

.field public static final enum CDMA_PRI:Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

.field public static final enum CDMA_PRL:Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

.field public static final enum UNKNOWN:Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;


# instance fields
.field private final mIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 51
    new-instance v0, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v4, v4}, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->UNKNOWN:Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    .line 56
    new-instance v0, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    const-string v1, "CDMA_NAI"

    invoke-direct {v0, v1, v5, v5}, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->CDMA_NAI:Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    .line 57
    new-instance v0, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    const-string v1, "CDMA_PRI"

    invoke-direct {v0, v1, v6, v6}, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->CDMA_PRI:Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    .line 58
    new-instance v0, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    const-string v1, "CDMA_PRL"

    invoke-direct {v0, v1, v7, v7}, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->CDMA_PRL:Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    .line 66
    new-instance v0, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    const-string v1, "CDMA_ICC"

    invoke-direct {v0, v1, v8, v8}, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->CDMA_ICC:Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    .line 67
    new-instance v0, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    const-string v1, "CDMA_ERI"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->CDMA_ERI:Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    .line 68
    new-instance v0, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    const-string v1, "CDMA_IMEI"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->CDMA_IMEI:Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    .line 69
    new-instance v0, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    const-string v1, "CDMA_IMEI_SV"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->CDMA_IMEI_SV:Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    .line 72
    new-instance v0, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    const-string v1, "CDMA_LIFE_TIME_TOTAL_CALL"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->CDMA_LIFE_TIME_TOTAL_CALL:Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    .line 73
    new-instance v0, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    const-string v1, "CDMA_LIFE_TIME_TOTAL_MINS"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->CDMA_LIFE_TIME_TOTAL_MINS:Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    .line 74
    new-instance v0, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    const-string v1, "CDMA_LIFE_TIME_TOTAL_DATA_RX"

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->CDMA_LIFE_TIME_TOTAL_DATA_RX:Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    .line 75
    new-instance v0, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    const-string v1, "CDMA_LIFE_TIME_TOTAL_DATA_TX"

    const/16 v2, 0xb

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->CDMA_LIFE_TIME_TOTAL_DATA_TX:Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    .line 77
    new-instance v0, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    const-string v1, "CDMA_MEID"

    const/16 v2, 0xc

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->CDMA_MEID:Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    .line 50
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    sget-object v1, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->UNKNOWN:Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->CDMA_NAI:Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->CDMA_PRI:Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->CDMA_PRL:Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->CDMA_ICC:Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->CDMA_ERI:Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->CDMA_IMEI:Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->CDMA_IMEI_SV:Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->CDMA_LIFE_TIME_TOTAL_CALL:Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->CDMA_LIFE_TIME_TOTAL_MINS:Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->CDMA_LIFE_TIME_TOTAL_DATA_RX:Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->CDMA_LIFE_TIME_TOTAL_DATA_TX:Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->CDMA_MEID:Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->$VALUES:[Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 80
    iput p3, p0, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->mIndex:I

    .line 81
    return-void
.end method

.method public static getPhoneTask(I)Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;
    .locals 1
    .parameter "index"

    .prologue
    .line 88
    packed-switch p0, :pswitch_data_0

    .line 119
    sget-object v0, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->UNKNOWN:Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    :goto_0
    return-object v0

    .line 90
    :pswitch_0
    sget-object v0, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->CDMA_NAI:Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    goto :goto_0

    .line 92
    :pswitch_1
    sget-object v0, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->CDMA_PRI:Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    goto :goto_0

    .line 94
    :pswitch_2
    sget-object v0, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->CDMA_PRL:Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    goto :goto_0

    .line 96
    :pswitch_3
    sget-object v0, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->CDMA_ICC:Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    goto :goto_0

    .line 98
    :pswitch_4
    sget-object v0, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->CDMA_ERI:Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    goto :goto_0

    .line 101
    :pswitch_5
    sget-object v0, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->CDMA_IMEI:Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    goto :goto_0

    .line 103
    :pswitch_6
    sget-object v0, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->CDMA_IMEI_SV:Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    goto :goto_0

    .line 108
    :pswitch_7
    sget-object v0, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->CDMA_LIFE_TIME_TOTAL_CALL:Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    goto :goto_0

    .line 110
    :pswitch_8
    sget-object v0, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->CDMA_LIFE_TIME_TOTAL_MINS:Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    goto :goto_0

    .line 112
    :pswitch_9
    sget-object v0, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->CDMA_LIFE_TIME_TOTAL_DATA_RX:Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    goto :goto_0

    .line 114
    :pswitch_a
    sget-object v0, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->CDMA_LIFE_TIME_TOTAL_DATA_TX:Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    goto :goto_0

    .line 116
    :pswitch_b
    sget-object v0, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->CDMA_MEID:Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    goto :goto_0

    .line 88
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;
    .locals 1
    .parameter "name"

    .prologue
    .line 50
    const-class v0, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->$VALUES:[Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    invoke-virtual {v0}, [Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;

    return-object v0
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/android/settings/framework/app/HtcPhoneService$PhoneTask;->mIndex:I

    return v0
.end method
