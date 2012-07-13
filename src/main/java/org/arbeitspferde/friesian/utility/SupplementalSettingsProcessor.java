/* Copyright 2012 Google, Inc.

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.
 */

package org.arbeitspferde.friesian.utility;

/**
 * Provide a means for proprietary settings to be set based off of supplemental flag values.
 */
public interface SupplementalSettingsProcessor {
  /**
   * Process supplemental arguments unrecognized by args4j and do what is needed with them, if
   * anything.
   *
   * @throws IllegalArgumentException if an illegal argument is provided.
   */
  public void process(final String[] arguments) throws IllegalArgumentException;
}
