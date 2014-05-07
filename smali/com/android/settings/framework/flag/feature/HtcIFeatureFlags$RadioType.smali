.class public Lcom/android/settings/framework/flag/feature/HtcIFeatureFlags$RadioType;
.super Ljava/lang/Object;
.source "HtcIFeatureFlags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/flag/feature/HtcIFeatureFlags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RadioType"
.end annotation


# static fields
.field public static final CDMA:I = 0x2

.field public static final CDMA_LTE:I = 0x5

.field public static final GSM_CDMA:I = 0x7

.field public static final GSM_GSM:I = 0x6

.field public static final KEY:Ljava/lang/String; = "radio_type"

.field public static final TDSCDMA:I = 0x3

.field public static final TDSCDMA_TDLTE:I = 0x9

.field public static final UMTS:I = 0x1

.field public static final UMTS_LTE:I = 0x4

.field public static final UNKNOWN:I = 0x0

.field public static final WORLDPHONE_GSM:I = 0xa

.field public static final WORLDPHONE_LTE_BOUND_CDMA:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "UMTS"

    goto :goto_0

    :pswitch_1
    const-string v0, "CDMA"

    goto :goto_0

    :pswitch_2
    const-string v0, "TDSCDMA"

    goto :goto_0

    :pswitch_3
    const-string v0, "UMTS + LTE"

    goto :goto_0

    :pswitch_4
    const-string v0, "CDMA + eHRPD + LTE"

    goto :goto_0

    :pswitch_5
    const-string v0, "GSM_GSM"

    goto :goto_0

    :pswitch_6
    const-string v0, "GSM_CDMA"

    goto :goto_0

    :pswitch_7
    const-string v0, "WORLDPHONE + LTE_BOUND_CDMA"

    goto :goto_0

    :pswitch_8
    const-string v0, "TDSCDMA + TDLTE"

    goto :goto_0

    :pswitch_9
    const-string v0, "WORLDPHONE + GSM"

    goto :goto_0

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
    .end packed-switch
.end method
