.class Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;
.super Landroid/os/AsyncTask;
.source "GlobalScreenshot.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static mTickerAddSpace:Z


# instance fields
.field private final mImageFileName:Ljava/lang/String;

.field private final mImageFilePath:Ljava/lang/String;

.field private final mImageHeight:I

.field private final mImageTime:J

.field private final mImageWidth:I

.field private final mNotificationBuilder:Landroid/app/Notification$Builder;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private final mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

.field private final mParams:Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

.field private final mPublicNotificationBuilder:Landroid/app/Notification$Builder;

.field private final mScreenshotDir:Ljava/io/File;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/systemui/screenshot/SaveImageInBackgroundData;Landroid/app/NotificationManager;)V
    .locals 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Lcom/android/systemui/screenshot/SaveImageInBackgroundData;
    .param p3, "nManager"    # Landroid/app/NotificationManager;

    .prologue
    .line 147
    invoke-direct/range {p0 .. p0}, Landroid/os/AsyncTask;-><init>()V

    .line 149
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 152
    .local v17, "r":Landroid/content/res/Resources;
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    .line 153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    .line 154
    new-instance v19, Ljava/text/SimpleDateFormat;

    const-string/jumbo v20, "yyyyMMdd-HHmmss"

    invoke-direct/range {v19 .. v20}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v20, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v19 .. v20}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    .line 155
    .local v8, "imageDate":Ljava/lang/String;
    const-string/jumbo v19, "Screenshot_%s.png"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v8, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    .line 157
    new-instance v19, Ljava/io/File;

    .line 158
    sget-object v20, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    .line 157
    invoke-static/range {v20 .. v20}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v20

    .line 158
    const-string/jumbo v21, "Screenshots"

    .line 157
    invoke-direct/range {v19 .. v21}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotDir:Ljava/io/File;

    .line 159
    new-instance v19, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotDir:Ljava/io/File;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-direct/range {v19 .. v21}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    .line 162
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    .line 163
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    .line 164
    move-object/from16 v0, p2

    iget v7, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->iconSize:I

    .line 165
    .local v7, "iconSize":I
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->previewWidth:I

    move/from16 v16, v0

    .line 166
    .local v16, "previewWidth":I
    move-object/from16 v0, p2

    iget v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->previewheight:I

    .line 168
    .local v15, "previewHeight":I
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4}, Landroid/graphics/Canvas;-><init>()V

    .line 169
    .local v4, "c":Landroid/graphics/Canvas;
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    .line 170
    .local v13, "paint":Landroid/graphics/Paint;
    new-instance v5, Landroid/graphics/ColorMatrix;

    invoke-direct {v5}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 171
    .local v5, "desat":Landroid/graphics/ColorMatrix;
    const/high16 v19, 0x3e800000    # 0.25f

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 172
    new-instance v19, Landroid/graphics/ColorMatrixColorFilter;

    move-object/from16 v0, v19

    invoke-direct {v0, v5}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 173
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 174
    .local v9, "matrix":Landroid/graphics/Matrix;
    const v12, 0x40ffffff    # 7.9999995f

    .line 176
    .local v12, "overlayColor":I
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v19

    move/from16 v0, v16

    move-object/from16 v1, v19

    invoke-static {v0, v15, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 177
    .local v14, "picture":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    move/from16 v19, v0

    sub-int v19, v16, v19

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    move/from16 v20, v0

    sub-int v20, v15, v20

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 178
    invoke-virtual {v4, v14}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 179
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v4, v0, v9, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 180
    invoke-virtual {v4, v12}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 181
    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 184
    int-to-float v0, v7

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    move/from16 v21, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->min(II)I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v18, v19, v20

    .line 185
    .local v18, "scale":F
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v7, v7, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 186
    .local v6, "icon":Landroid/graphics/Bitmap;
    move/from16 v0, v18

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 187
    int-to-float v0, v7

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v18

    sub-float v19, v19, v20

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    .line 188
    int-to-float v0, v7

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v18

    sub-float v20, v20, v21

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    .line 187
    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 189
    invoke-virtual {v4, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 190
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v4, v0, v9, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 191
    invoke-virtual {v4, v12}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 192
    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 195
    sget-boolean v19, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mTickerAddSpace:Z

    xor-int/lit8 v19, v19, 0x1

    sput-boolean v19, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mTickerAddSpace:Z

    .line 196
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    .line 197
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 200
    .local v10, "now":J
    new-instance v19, Landroid/app/Notification$BigPictureStyle;

    invoke-direct/range {v19 .. v19}, Landroid/app/Notification$BigPictureStyle;-><init>()V

    .line 201
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->createAshmemBitmap()Landroid/graphics/Bitmap;

    move-result-object v20

    .line 200
    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

    .line 205
    new-instance v19, Landroid/app/Notification$Builder;

    sget-object v20, Lcom/android/systemui/util/NotificationChannels;->SCREENSHOTS:Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 206
    const v20, 0x7f11045b

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 205
    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v19

    .line 207
    const v20, 0x7f110459

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 205
    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v19

    .line 208
    const v20, 0x7f080305

    .line 205
    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v19

    .line 209
    const-string/jumbo v20, "progress"

    .line 205
    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10, v11}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v19

    .line 211
    const/16 v20, 0x1

    .line 205
    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v19

    .line 213
    const v20, 0x1060149

    .line 212
    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v20

    .line 205
    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v19

    .line 204
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mPublicNotificationBuilder:Landroid/app/Notification$Builder;

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mPublicNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/systemui/SystemUI;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;)V

    .line 216
    new-instance v20, Landroid/app/Notification$Builder;

    sget-object v19, Lcom/android/systemui/util/NotificationChannels;->SCREENSHOTS:Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 217
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const v21, 0x7f11045a

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 218
    sget-boolean v19, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mTickerAddSpace:Z

    if-eqz v19, :cond_0

    const-string/jumbo v19, " "

    .line 217
    :goto_0
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 216
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v19

    .line 219
    const v20, 0x7f11045b

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 216
    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v19

    .line 220
    const v20, 0x7f110459

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 216
    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v19

    .line 221
    const v20, 0x7f080305

    .line 216
    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10, v11}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v19

    .line 223
    const/16 v20, 0x1

    .line 216
    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v19

    .line 224
    const v20, 0x1060149

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v20

    .line 216
    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v19

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

    move-object/from16 v20, v0

    .line 216
    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v19

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mPublicNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v20

    .line 216
    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v19, v0

    const/16 v20, 0x20

    const/16 v21, 0x1

    invoke-virtual/range {v19 .. v21}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/systemui/SystemUI;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;)V

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    move-object/from16 v19, v0

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v20

    .line 230
    const/16 v21, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v19, v0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->createAshmemBitmap()Landroid/graphics/Bitmap;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

    move-object/from16 v20, v0

    const/16 v19, 0x0

    check-cast v19, Landroid/graphics/Bitmap;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Notification$BigPictureStyle;->bigLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    .line 244
    return-void

    .line 218
    :cond_0
    const-string/jumbo v19, ""

    goto/16 :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 246
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 28
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 248
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->isCancelled()Z

    move-result v23

    if-eqz v23, :cond_0

    .line 249
    const/16 v23, 0x0

    return-object v23

    .line 254
    :cond_0
    const/16 v23, -0x2

    invoke-static/range {v23 .. v23}, Landroid/os/Process;->setThreadPriority(I)V

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v6, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    .line 257
    .local v6, "context":Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v12, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    .line 258
    .local v12, "image":Landroid/graphics/Bitmap;
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 262
    .local v14, "r":Landroid/content/res/Resources;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotDir:Ljava/io/File;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->mkdirs()Z

    .line 266
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x3e8

    div-long v8, v24, v26

    .line 269
    .local v8, "dateSeconds":J
    new-instance v13, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-direct {v13, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 270
    .local v13, "out":Ljava/io/OutputStream;
    sget-object v23, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v24, 0x64

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v12, v0, v1, v13}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 271
    invoke-virtual {v13}, Ljava/io/OutputStream;->flush()V

    .line 272
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V

    .line 275
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 276
    .local v22, "values":Landroid/content/ContentValues;
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    .line 277
    .local v15, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v23, "_data"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string/jumbo v23, "title"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string/jumbo v23, "_display_name"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const-string/jumbo v23, "datetaken"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 281
    const-string/jumbo v23, "date_added"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 282
    const-string/jumbo v23, "date_modified"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 283
    const-string/jumbo v23, "mime_type"

    const-string/jumbo v24, "image/png"

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string/jumbo v23, "width"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 285
    const-string/jumbo v23, "height"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 286
    const-string/jumbo v23, "_size"

    new-instance v24, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-direct/range {v24 .. v25}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->length()J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 287
    sget-object v23, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v21

    .line 290
    .local v21, "uri":Landroid/net/Uri;
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v23

    new-instance v24, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    move-wide/from16 v26, v0

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v23 .. v24}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v20

    .line 291
    .local v20, "subjectDate":Ljava/lang/String;
    const-string/jumbo v23, "Screenshot (%s)"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v20, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .line 292
    .local v19, "subject":Ljava/lang/String;
    new-instance v18, Landroid/content/Intent;

    const-string/jumbo v23, "android.intent.action.SEND"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 293
    .local v18, "sharingIntent":Landroid/content/Intent;
    const-string/jumbo v23, "image/png"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    const-string/jumbo v23, "android.intent.extra.STREAM"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 295
    const-string/jumbo v23, "android.intent.extra.SUBJECT"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    new-instance v23, Landroid/content/Intent;

    const-class v24, Lcom/android/systemui/screenshot/GlobalScreenshot$TargetChosenReceiver;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v0, v6, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 298
    const/16 v24, 0x0

    .line 300
    const/high16 v25, 0x50000000

    .line 298
    move/from16 v0, v24

    move-object/from16 v1, v23

    move/from16 v2, v25

    invoke-static {v6, v0, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 302
    .local v4, "chooseAction":Landroid/app/PendingIntent;
    invoke-virtual {v4}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v23

    .line 301
    const/16 v24, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;Landroid/content/IntentSender;)Landroid/content/Intent;

    move-result-object v23

    .line 303
    const v24, 0x10008000

    .line 301
    invoke-virtual/range {v23 .. v24}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v5

    .line 304
    .local v5, "chooserIntent":Landroid/content/Intent;
    const/16 v23, 0x0

    .line 305
    const/high16 v24, 0x10000000

    .line 304
    move/from16 v0, v23

    move/from16 v1, v24

    invoke-static {v6, v0, v5, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v16

    .line 306
    .local v16, "shareAction":Landroid/app/PendingIntent;
    new-instance v17, Landroid/app/Notification$Action$Builder;

    .line 308
    const v23, 0x10405d1

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 307
    const v24, 0x7f0801ec

    .line 306
    move-object/from16 v0, v17

    move/from16 v1, v24

    move-object/from16 v2, v23

    move-object/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 309
    .local v17, "shareActionBuilder":Landroid/app/Notification$Action$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v23, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 313
    new-instance v23, Landroid/content/Intent;

    const-class v24, Lcom/android/systemui/screenshot/GlobalScreenshot$DeleteScreenshotReceiver;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v0, v6, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 314
    const-string/jumbo v24, "android:screenshot_uri_id"

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v25

    .line 313
    invoke-virtual/range {v23 .. v25}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v23

    .line 312
    const/16 v24, 0x0

    .line 315
    const/high16 v25, 0x50000000

    .line 312
    move/from16 v0, v24

    move-object/from16 v1, v23

    move/from16 v2, v25

    invoke-static {v6, v0, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 316
    .local v7, "deleteAction":Landroid/app/PendingIntent;
    new-instance v10, Landroid/app/Notification$Action$Builder;

    .line 318
    const v23, 0x10401a3

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 317
    const v24, 0x7f0801eb

    .line 316
    move/from16 v0, v24

    move-object/from16 v1, v23

    invoke-direct {v10, v0, v1, v7}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 319
    .local v10, "deleteActionBuilder":Landroid/app/Notification$Action$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v23, v0

    invoke-virtual {v10}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->imageUri:Landroid/net/Uri;

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->errorMsgResId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    .end local v4    # "chooseAction":Landroid/app/PendingIntent;
    .end local v5    # "chooserIntent":Landroid/content/Intent;
    .end local v7    # "deleteAction":Landroid/app/PendingIntent;
    .end local v8    # "dateSeconds":J
    .end local v10    # "deleteActionBuilder":Landroid/app/Notification$Action$Builder;
    .end local v13    # "out":Ljava/io/OutputStream;
    .end local v15    # "resolver":Landroid/content/ContentResolver;
    .end local v16    # "shareAction":Landroid/app/PendingIntent;
    .end local v17    # "shareActionBuilder":Landroid/app/Notification$Action$Builder;
    .end local v18    # "sharingIntent":Landroid/content/Intent;
    .end local v19    # "subject":Ljava/lang/String;
    .end local v20    # "subjectDate":Ljava/lang/String;
    .end local v21    # "uri":Landroid/net/Uri;
    .end local v22    # "values":Landroid/content/ContentValues;
    :goto_0
    if-eqz v12, :cond_1

    .line 333
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->recycle()V

    .line 336
    :cond_1
    const/16 v23, 0x0

    return-object v23

    .line 324
    :catch_0
    move-exception v11

    .line 327
    .local v11, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->clearImage()V

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    move-object/from16 v23, v0

    const v24, 0x7f110455

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->errorMsgResId:I

    goto :goto_0
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 400
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->onCancelled(Ljava/lang/Void;)V

    return-void
.end method

.method protected onCancelled(Ljava/lang/Void;)V
    .locals 2
    .param p1, "params"    # Ljava/lang/Void;

    .prologue
    .line 405
    iget-object v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->finisher:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 406
    iget-object v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    invoke-virtual {v0}, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->clearImage()V

    .line 407
    iget-object v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    invoke-virtual {v0}, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->clearContext()V

    .line 410
    iget-object v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 411
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 339
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 13
    .param p1, "params"    # Ljava/lang/Void;

    .prologue
    const v12, 0x7f110458

    const v11, 0x7f110457

    const v10, 0x1060149

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 341
    iget-object v6, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    iget v6, v6, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->errorMsgResId:I

    if-eqz v6, :cond_1

    .line 343
    iget-object v6, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    iget-object v6, v6, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    .line 344
    iget-object v8, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    iget v8, v8, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->errorMsgResId:I

    .line 343
    invoke-static {v6, v7, v8}, Lcom/android/systemui/screenshot/GlobalScreenshot;->notifyScreenshotError(Landroid/content/Context;Landroid/app/NotificationManager;I)V

    .line 396
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    iget-object v6, v6, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->finisher:Ljava/lang/Runnable;

    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    .line 397
    iget-object v6, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    invoke-virtual {v6}, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->clearContext()V

    .line 398
    return-void

    .line 347
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    iget-object v0, v6, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    .line 348
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 351
    .local v3, "r":Landroid/content/res/Resources;
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.VIEW"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 352
    .local v2, "launchIntent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    iget-object v6, v6, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->imageUri:Landroid/net/Uri;

    const-string/jumbo v7, "image/png"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 354
    const v6, 0x10000001

    .line 353
    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 356
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 359
    .local v4, "now":J
    iget-object v6, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mPublicNotificationBuilder:Landroid/app/Notification$Builder;

    .line 360
    invoke-virtual {v3, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 359
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 361
    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 359
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 362
    iget-object v7, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    iget-object v7, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    invoke-static {v7, v8, v2, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 359
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 365
    invoke-virtual {v0, v10}, Landroid/content/Context;->getColor(I)I

    move-result v7

    .line 359
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 367
    iget-object v6, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    .line 368
    invoke-virtual {v3, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 367
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 369
    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 367
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 370
    iget-object v7, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    iget-object v7, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    invoke-static {v7, v8, v2, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 367
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 373
    invoke-virtual {v0, v10}, Landroid/content/Context;->getColor(I)I

    move-result v7

    .line 367
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 375
    iget-object v7, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mPublicNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v7}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    .line 367
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 376
    const/16 v7, 0x20

    .line 367
    invoke-virtual {v6, v7, v8}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    .line 379
    iget-object v6, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    .line 380
    iget-object v7, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v7}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    .line 379
    invoke-virtual {v6, v9, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 387
    iget-object v6, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    iget-object v6, v6, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->reqBundle:Landroid/os/Bundle;

    if-eqz v6, :cond_0

    .line 388
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 389
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "com.motorola.screen.SCREENCAPTURE"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 390
    const-string/jumbo v6, "com.motorola.screenshot.imagepath"

    iget-object v7, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 391
    const-string/jumbo v6, "com.motorola.screenshot.reqbundle"

    iget-object v7, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    iget-object v7, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->reqBundle:Landroid/os/Bundle;

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 392
    const-string/jumbo v6, "com.motorola.screenshot.permission.SCREENSHOT_TAKEN"

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
