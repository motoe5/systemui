.class Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;
.super Ljava/lang/Object;
.source "LockscreenWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoaderResult"
.end annotation


# instance fields
.field public final bitmap:Landroid/graphics/Bitmap;

.field public final success:Z


# direct methods
.method constructor <init>(ZLandroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "success"    # Z
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;->success:Z

    .line 204
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;->bitmap:Landroid/graphics/Bitmap;

    .line 205
    return-void
.end method

.method static fail()Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;
    .locals 3

    .prologue
    .line 212
    new-instance v0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;-><init>(ZLandroid/graphics/Bitmap;)V

    return-object v0
.end method

.method static success(Landroid/graphics/Bitmap;)Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;
    .locals 2
    .param p0, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 208
    new-instance v0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;-><init>(ZLandroid/graphics/Bitmap;)V

    return-object v0
.end method
