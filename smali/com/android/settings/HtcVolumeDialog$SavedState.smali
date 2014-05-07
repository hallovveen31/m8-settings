.class Lcom/android/settings/HtcVolumeDialog$SavedState;
.super Lcom/android/settings/HtcVolumeDialogBase$BaseSavedState;
.source "HtcVolumeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/HtcVolumeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/settings/HtcVolumeDialog$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mVolumeStore:Lcom/android/settings/HtcVolumeDialog$VolumeStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/HtcVolumeDialog$SavedState$1;

    invoke-direct {v0}, Lcom/android/settings/HtcVolumeDialog$SavedState$1;-><init>()V

    sput-object v0, Lcom/android/settings/HtcVolumeDialog$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/settings/HtcVolumeDialogBase$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    new-instance v0, Lcom/android/settings/HtcVolumeDialog$VolumeStore;

    invoke-direct {v0}, Lcom/android/settings/HtcVolumeDialog$VolumeStore;-><init>()V

    iput-object v0, p0, Lcom/android/settings/HtcVolumeDialog$SavedState;->mVolumeStore:Lcom/android/settings/HtcVolumeDialog$VolumeStore;

    iget-object v0, p0, Lcom/android/settings/HtcVolumeDialog$SavedState;->mVolumeStore:Lcom/android/settings/HtcVolumeDialog$VolumeStore;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/settings/HtcVolumeDialog$VolumeStore;->volume:I

    iget-object v0, p0, Lcom/android/settings/HtcVolumeDialog$SavedState;->mVolumeStore:Lcom/android/settings/HtcVolumeDialog$VolumeStore;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/settings/HtcVolumeDialog$VolumeStore;->originalVolume:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/HtcVolumeDialogBase$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    new-instance v0, Lcom/android/settings/HtcVolumeDialog$VolumeStore;

    invoke-direct {v0}, Lcom/android/settings/HtcVolumeDialog$VolumeStore;-><init>()V

    iput-object v0, p0, Lcom/android/settings/HtcVolumeDialog$SavedState;->mVolumeStore:Lcom/android/settings/HtcVolumeDialog$VolumeStore;

    return-void
.end method


# virtual methods
.method getVolumeStore()Lcom/android/settings/HtcVolumeDialog$VolumeStore;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/HtcVolumeDialog$SavedState;->mVolumeStore:Lcom/android/settings/HtcVolumeDialog$VolumeStore;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/android/settings/HtcVolumeDialog$SavedState;->mVolumeStore:Lcom/android/settings/HtcVolumeDialog$VolumeStore;

    iget v0, v0, Lcom/android/settings/HtcVolumeDialog$VolumeStore;->volume:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/settings/HtcVolumeDialog$SavedState;->mVolumeStore:Lcom/android/settings/HtcVolumeDialog$VolumeStore;

    iget v0, v0, Lcom/android/settings/HtcVolumeDialog$VolumeStore;->originalVolume:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
